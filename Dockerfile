FROM eclipse-temurin:17-jre

WORKDIR /app

# 3. Copier le jar fabriqué par Maven
COPY target/democyber-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

# 5. Commande lancée au démarrage du conteneur
ENTRYPOINT ["java", "-jar", "app.jar"]