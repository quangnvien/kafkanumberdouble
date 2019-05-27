FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /doubler/lib
COPY ${DEPENDENCY}/META-INF /doubler/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /doubler
ENTRYPOINT ["java","-cp","doubler:doubler/lib/*","vn.quang.KafkaMain"]