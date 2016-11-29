package com.starbucks.analytics

import java.util

import com.starbucks.zookeeper.ZkConnect
import org.apache.zookeeper.ZooKeeper
import org.apache.zookeeper.data.Stat

/**
  * Class to ingest all the CSV files from the HDFS.
  * We validate the data, parse it and also applies schema over it.
  * We also store the data files back to HDFS in buckets. Based on YY/MM/DD derived from the filename.
  */
class GetZookeeperFileList(zookeeperHost: String, zookeeperPort: Int) {

  val con = new ZkConnect
  var zk: ZooKeeper = null

  def startZk(): Unit ={
    zk = con.connect("localhost", 2181)
  }

  def getFiles(zookeeperParentNode : String): java.util.List[String] ={

    val files = new util.ArrayList[String]
    val childrenZnode = zk.getChildren(zookeeperParentNode, null, new Stat)

    if(childrenZnode.size() > 0) {
      val it: java.util.Iterator[String] = childrenZnode.iterator()
      while (it.hasNext) {

        val child = it.next()
        val status = new String(zk.getData(zookeeperParentNode+"/"+child, false, null))
        if ( status.equals("Created")){
          files.add(child.replace("_","/"))
        }
      }
    }
    files

  }

  def changeFileStatus(file: String, status: String): Unit ={

    val stat = new Stat
    zk.getData(file,false,stat)
    val returnStat= zk.setData(file,status.getBytes,stat.getVersion)
    println("Updated the file Status to : "+status)
  }

}
