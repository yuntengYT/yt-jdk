gc_params="-XX:+UseConcMarkSweepGC -XX:+ExplicitGCInvokesConcurrentAndUnloadsClasses \
           -XX:+UseCMSInitiatingOccupancyOnly -XX:CMSInitiatingOccupancyFraction=50 -XX:+CMSScavengeBeforeRemark -XX:MetaspaceSize=256m \
           -XX:MaxMetaspaceSize=256m -XX:CompressedClassSpaceSize=64m -XX:StringTableSize=1000003 -XX:ParallelGCThreads=4 \
           -Xloggc:/med/log/gc_ytjdk_%t-log -XX:+PrintFlagsFinal -XX:+PrintGCDetails -XX:+PrintGCDateStamps  \
           -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=10 -XX:GCLogFileSize=10M -XX:+PrintStringTableStatistics -XX:+DisableExplicitGC "

/bin/java -Xms2g -Xmx2g -Xmn1g -Xss256k  ${gc_params} -jar yt-jdk-1.0-SNAPSHOT.jar --spring.profiles.active=${profile}
