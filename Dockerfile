FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
COPY .gradle/ .gradle

COPY settings.gradle settings.gradle
COPY gradle/ gradle
COPY gradlew build.gradle ./
RUN ./gradlew build

COPY src ./src
EXPOSE 8761
CMD ["./gradlew", "bootRun"]