FROM openjdk:17-slim

WORKDIR /app

COPY com ./com
COPY jmx_prometheus_javaagent-0.20.0.jar ./
COPY jmx_exporter_config.yaml ./

RUN mkdir -p out && javac -d out com/cyat/backend/Main.java

EXPOSE 8080 8081

CMD ["java", "-javaagent:jmx_prometheus_javaagent-0.20.0.jar=0.0.0.0:8081:jmx_exporter_config.yaml", "-cp", "out", "com.cyat.backend.Main"]
