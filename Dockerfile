FROM gradle AS builder

COPY . .

RUN ./gradlew --no-daemon clean bootJar


FROM openjdk:8-jdk-alpine

COPY --from=builder /home/gradle/applications/sample-boot-knative-app/build/libs/sample-boot-knative-app-0.0.3-SNAPSHOT.jar .

ENTRYPOINT [ "java", "-jar", "sample-boot-knative-app-0.0.3-SNAPSHOT.jar" ]