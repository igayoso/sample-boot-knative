FROM openjdk:8-jdk-alpine AS builder

COPY . .

RUN ./gradlew --no-daemon clean build


FROM openjdk:8-jdk-alpine

COPY --from=builder /home/gradle/build/libs/simple-reactive-app-0.0.1-SNAPSHOT.jar .

ENTRYPOINT [ "java", "-XX:TieredStopAtLevel=1", "-Dspring.jmx.enabled=false", "-noverify", "-jar", "simple-reactive-app-0.0.1-SNAPSHOT.jar" ]