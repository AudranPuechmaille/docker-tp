#!/bin/sh
# Exécute l'application Java
java -jar /app/HelloWorld.jar

# Maintient le conteneur actif pour les tests
exec "$@"
