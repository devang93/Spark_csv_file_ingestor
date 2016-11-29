package com.starbucks.analytics

import java.io.{BufferedInputStream, BufferedReader, InputStreamReader}
import java.nio.charset.StandardCharsets
import java.util
import org.apache.hadoop.conf.Configuration
import org.apache.hadoop.fs.{FileSystem, Path}
import org.apache.spark.SparkContext
import org.apache.spark.sql.{Row, SQLContext}
import org.apache.spark.sql.types.{IntegerType, StringType, StructField, StructType}

/**
  * Created by depatel on 8/5/2016.
  */
class SparkCsvFileLoader extends Serializable {

  val map = new util.HashMap[String, String]()

  def convertor(value:String, headersArr: Array[String], m: util.HashMap[String, String]):Row ={

    val convertedValues = new util.ArrayList[Any]
    val values = value.split(",")
    val numValues = values.length
    val numHeader = headersArr.length

    if(numValues == numHeader) {
      for (i <- 0 to numValues-1){
        val dataType = m.get(headersArr(i))
        try{ convertedValues.add(convertDataType(dataType, values(i))) }
        catch { case e:NumberFormatException => throw new NumberFormatException(e.getMessage) }
      }
    }
    else
      println("Invalid input :"+ values(0))

    if(convertedValues.size() == numValues )
      Row.fromSeq(convertedValues.toArray)
    else
      Row.empty
  }

  def convertDataType(dataType: String, value: String): Any ={

    var convertedValue:Any = null
    dataType match {
      case "String" => convertedValue = value
      case "Integer" => convertedValue = value.toInt
      case "Boolean" => convertedValue = value.toBoolean
      case "Long" => convertedValue = value.toLong
      case "Double" => convertedValue = value.toDouble
      case "Float" => convertedValue = value.toFloat
    }
    convertedValue
  }

  // change this to create this schema out of the DDL. For both of the following schema mapping methods.

  def createMap() : util.HashMap[String,String]={
    val schemaString = "name birth_year status"
    for( c <- schemaString.split(" ")){
      if(c.equals("birth_year")){map.put(c,"Integer")}
      else{map.put(c, "String")}
    }
    return map
  }

    // both of this schema creation methods should be combined to one.
    // so that the headers Array and the spark schema creator don't mismatch.
  def createSparkSchema() : util.ArrayList[StructField] ={
    val schemafields = new util.ArrayList[StructField]()
    schemafields.add(StructField("name",StringType, true))
    schemafields.add(StructField("birth_year", IntegerType, true))
    schemafields.add(StructField("status",StringType,true))
    return schemafields
  }


  def launchSparkJob(file: String, sc: SparkContext): Unit ={

    val headerMap = sc.broadcast(createMap())
    val schema = StructType(createSparkSchema())
    val hadoopConf = new Configuration()
    // getting the headers from the file's first line.
    val reader = new BufferedReader(new InputStreamReader((new BufferedInputStream(FileSystem.get(hadoopConf).open(new Path(file)))), StandardCharsets.UTF_8))
    var headerLine = reader.readLine()
    var headersName = headerLine.replaceAll("(?<=\")([^\"]+?),([^\"]+?)(?=\")", "$1_$2")
    while( !headersName.equalsIgnoreCase(headerLine)) {
      headerLine = headersName
      headersName = headersName.replaceAll("(?<=\")([^\"]+?),([^\"]+?)(?=\")", "$1_$2")
    }
    val headers = headersName.split("\"?(,|$)(?=(([^\"]*\"){2})*[^\"]*$) *\"?")
    val headersArray =sc.broadcast(headers)
    reader.close()
    // reading the csv file with header set to true.
    // using the spark built-in csv reader.

    val sqlContext = new SQLContext(sc)
    val testRDD = sc.textFile(file)
    val line = testRDD.first()

    val dataRDD = testRDD.filter(l => l!=line).map(value =>{
      val headersArr = headersArray.value
      val m = headerMap.value
      try{
        convertor(value, headersArr, m)
      }
      catch{
        case e:ClassCastException => {
          println("ClassCastException for : "+ value.toString)
          println(e.getMessage)
          Row.empty
        }
        case e:NumberFormatException => {
          println("NumberFormatException for : "+value.toString)
          println(e.printStackTrace)
          Row.empty
        }
        case e:RuntimeException => {
          println("RunTimeException for : "+ value.toString)
          println(e.printStackTrace)
          Row.empty
        }
      }
    })

    val toMapRDD= dataRDD.filter(row => (row.size>0))
    val schemaRDD = sqlContext.createDataFrame(toMapRDD, schema)
    val filename = file.split("/")
    schemaRDD.write.mode("overwrite").parquet("/user/depatel/parquet/"+filename(filename.length-1))

    // just for the testing. We actually dont need to laod the table and query the data.
    schemaRDD.registerTempTable("test")
    val queriedData = sqlContext.sql("SELECT * from test").coalesce(1).collect().foreach(println)

  }

}
