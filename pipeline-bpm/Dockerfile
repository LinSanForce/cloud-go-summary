FROM harbor.yzf.best:1180/library/openjdk:8-stretch-jfx
EXPOSE 8088

VOLUME /tmp
RUN mkdir -p /data/power-bam-server
ADD ./target/power-bam-server-0.0.1-SNAPSHOT.jar /data/power-bam-server/app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Xms3072m -Xmx3072m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/data/power-bam-server/HeapDump.hprof -jar","/app.jar"]