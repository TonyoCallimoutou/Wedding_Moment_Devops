## Projet Devops 

Le projet consiste à automatiser la mise en place d'une architecture de bout en bout afin d'héberger un site web.

## Architecture
SCHEMA DE NOTRE ARCHITECTURE
#### Vagrant
1 - Installation de Vagrant :

* Téléchargement et installation de Vagrant sur notre machine physique
* Configuration du fichier Vagrantfile pour créer un environnement de développement virtuel avec les spécifications nécessaires pour héberger notre site web.
  
#### Ansible
2 - Installation d'Ansible :

* Téléchargement et installation d'Ansible sur notre machine physique

Ensuite, nous allons configurer tout les composants nécessaires à notre environnement virtuel pour l'hébergement de notre site web 
  
#### Docker
3 - Installation de Docker :

* Configuration du playbook Ansible pour installer Docker sur notre environnement virtuel
* Configuration du playbook Ansible pour créer des conteneurs Docker pour chaque microprocessus de notre site web, tels que le conteneur pour le serveur web, le conteneur pour la base de données, etc.
* Configuration du playbook Ansible pour créer une image docker en téléchargeant et en installant tous les composants nécessaires à notre environnement virtuel pour l'hébergement de notre site web, tels que Nginx, PHP, MySQL, etc

L'image docker est un package léger et autonome qui inclut tout ce qui est nécessaire pour l'exécution d'un processus.

## En résumé 

En suivant ces étapes, nous avons automatisé la mise en place d'une architecture de bout en bout pour héberger notre site web. Avec Vagrant, on peut créer un environnement de développement virtuel personnalisé pour notre site web, tandis qu'Ansible nous permet de configurer facilement tous les composants nécessaires à l'hébergement de notre site web. 

Enfin, Docker nous permet de créer des conteneurs légers et autonomes pour chaque microprocessus de notre site web, ce qui facilite la gestion et le déploiement de notre application web.

