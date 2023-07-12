#!/bin/bash

# Récupérer les ID des conteneurs Docker en cours d'exécution
container_ids=$(sudo docker ps -q)

# Vérifier s'il y a des conteneurs en cours d'exécution
if [[ -z "$container_ids" ]]; then
  echo "Aucun conteneur en cours d'exécution."
else
  # Arrêter tous les conteneurs
  sudo docker stop $container_ids
  echo "Tous les conteneurs ont été arrêtés."
fi
