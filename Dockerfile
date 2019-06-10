FROM gradle

COPY . .

CMD [ "./gradlew", "-p", "applications/sample-boot-knative-app", "clean", "bootRun" ]