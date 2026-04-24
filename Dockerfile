FROM maven:3.9.11-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
LABEL authors="abnerandrade"

EXPOSE 8888
ARG JAR_FILE=app.jar
ENV JAVA_OPTS="-XX:MaxRAMPercentage=80","-XX:MinRAMPercentage=20"

ENTRYPOINT ["java", "-jar", "app.jar"]