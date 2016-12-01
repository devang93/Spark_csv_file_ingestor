package com.starbucks.analytics

import java.io.{BufferedReader, File, FileReader}
import java.text.SimpleDateFormat
import java.util

import java.sql.Timestamp
import org.apache.spark.sql.types.StructType
import org.apache.spark.sql.{Row, SQLContext}
import org.apache.spark.{SparkConf, SparkContext}

/**
  * Created by depatel on 12/1/2016.
  */
object SparkMainClass {


  def main(args: Array[String]): Unit = {

    val filePath = "C:\\Users\\depatel\\IdeaProjects\\Spark_csv_file_ingestor\\src\\resources\\Location_2016_07_16.csv"
    val fileName = filePath.split("\\\\")
    val tableNameString = fileName(fileName.length-1).split("_")
    val tableName = tableNameString(0)

    val schemaConvertor = new DDLtoSparkSchemaConvertor
    val schemaInfo = schemaConvertor.createSparkSchemaFromDDL("C:\\Users\\depatel\\IdeaProjects\\Spark_csv_file_ingestor\\src\\resources\\taleo.ddl", tableName)

    val fileReader = new BufferedReader(new FileReader(new File("C:\\Users\\depatel\\IdeaProjects\\Spark_csv_file_ingestor\\src\\resources\\Location_2016_07_16.csv")))
    val firstLine = fileReader.readLine()
    //val headerNames = firstLine.split("\"?(,|$)(?=(([^\"]*\"){2})*[^\"]*$) *\"?")

    println(schemaInfo._1.size() + "  :  "+ schemaInfo._2.size())

    val sc = {
      val config = new SparkConf().setAppName("TaleoFileLoader").setMaster("local[*]")
      new SparkContext(config)
    }

    val inputRDD = sc.textFile(filePath)
    val headerLine = inputRDD.first()

    val fieldDataTypeMap = sc.broadcast(schemaInfo._1)
    val headerNames = sc.broadcast(firstLine.split("\"?(,|$)(?=(([^\"]*\"){2})*[^\"]*$) *\"?"))

    val inputDataRDD = inputRDD.filter(line => line!=headerLine).map(line => {

      val columnDataTypeMap = fieldDataTypeMap.value
      val columnNames = headerNames.value

      val rawValues = line.split(",")
      val numRawValues = rawValues.length
      val convertedValues = new util.ArrayList[Any]
      if(numRawValues == columnDataTypeMap.size()){
        for( i <- 0 to rawValues.length-1 ){
          val dataType = columnDataTypeMap.get(columnNames(i))
          val dateTimeFormat = new SimpleDateFormat("mm-dd-yyyy'T'HH:mm:ssXXX")
//          var convertedValue: Any = null
            val convertedValue:Any = dataType match {
              case "String" => rawValues(i)
              case "Integer" => rawValues(i).toInt
              case "Boolean" => rawValues(i).toBoolean
              case "Long" => rawValues(i).toLong
              case "Double" => rawValues(i).toDouble
              case "Float" => rawValues(i).toFloat
              case "Timestamp" => new Timestamp(dateTimeFormat.parse(rawValues(i)).getTime)
              case _ => { println("ohhhh"+ rawValues(i) + dataType)
                null }
            }
            convertedValues.add(convertedValue)
          println("added :" +convertedValue.toString)
        }
      } else {
        println("Invalid input")
      }

      if(convertedValues.size() == numRawValues)
        Row.fromSeq(convertedValues.toArray)
      else
        Row.empty
    }).filter( row => row.size>0 )

    println(inputDataRDD.count())
    println(inputDataRDD.collect().foreach(println))
    val testDF = new SQLContext(sc).createDataFrame(inputDataRDD, StructType(schemaInfo._2))
    testDF.show()
  }
}
