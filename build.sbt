name := "Spark_Csv_File_Ingestor"

version := "1.0"

scalaVersion := "2.10.6"

credentials += Credentials(Path.userHome / ".ivy2" / ".credentials")
resolvers += "PDW" at "http://lx41378.starbucks.net:8080/repository/PDW/"
resolvers += "SharedRepo" at "http://lx41378.starbucks.net:8080/repository/SharedRepo/"
resolvers += "Cloudera Repository" at "https://repository.cloudera.com/artifactory/cloudera-repos/"

libraryDependencies += "org.apache.spark" %% "spark-core" % "1.6.0-cdh5.7.1"

libraryDependencies += "org.apache.spark" %% "spark-sql" % "1.6.0-cdh5.7.1"

libraryDependencies += "com.starbucks" % "hdfs_watcher_2.10" % "1.0"

libraryDependencies += "com.starbucks.analytics" % "ddl_to_sparkschema_2.10" % "1.0.1"

libraryDependencies += "com.github.scopt" %% "scopt" % "3.3.0"

libraryDependencies += "com.github.nscala-time" %% "nscala-time" % "1.8.0"