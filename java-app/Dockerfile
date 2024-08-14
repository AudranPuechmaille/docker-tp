FROM openjdk:17-jdk-slim

WORKDIR /app

COPY src/HelloWorld.jar /app/HelloWorld.jar
COPY entrypoint.sh /app/entrypoint.sh

# Assurez-vous que le script est exécutable
RUN chmod +x /app/entrypoint.sh

# Définir le script comme point d'entrée
ENTRYPOINT ["/app/entrypoint.sh"]

# Optionnel : CMD pour permettre à l'utilisateur de passer des arguments au conteneur
CMD ["tail", "-f", "/dev/null"]

