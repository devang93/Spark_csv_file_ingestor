package com.starbucks.analytics

import com.starbucks.hdfs.watcher.FileEventListener
import com.starbucks.zookeeper.ZkConnect
import org.apache.zookeeper.CreateMode
import org.apache.zookeeper.ZooDefs.Ids
import org.slf4j.{Logger, LoggerFactory}


class TaleoFileWatcher(zookeeperServerHost: String, zookeeperPort: Int, zookeeperParentNode: String) extends FileEventListener{


    private val log: Logger = LoggerFactory.getLogger(this.getClass)
    private val zkConn = new ZkConnect
    private val zookeeper = zkConn.connect(zookeeperServerHost, zookeeperPort)
    private val exists = zookeeper.exists(zookeeperParentNode, false)

    if(exists == null){
      log.info("Given zookeeper parentNode doesn't exists; Creating one.")
      val parentData = "Parent"
      zookeeper.create(zookeeperParentNode, parentData.getBytes, Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT )
      log.info("Parent Node created.")
    }

    /**
      * Method to be invoked by the HDFS watcher whenever a file event is received.
      * It creates a child znode in the parent znode for each file event.
      *
      * @param files Array[String] All the files for which the event was received.
      */
    override def fileEventReceived(files: Array[String]): Unit = {

      files foreach (file => {
        val filename = file.split("/")
        val filter = file.replace(filename(0)+"//"+filename(2), "").replace("/", "_")
        val znode = zookeeperParentNode+"/"+filter

        if(zookeeper.exists(znode, false) == null ){
          val data = new String("Created")
          zookeeper.create(znode, data.getBytes, Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT)
          log.info(s"Zookeeper znode : ${znode} data : ${data} -- CREATED")
        } else {
          log.info(s"Zookeeper Znode: ${znode} -- EXISTS")
        }
      })
    }


}
