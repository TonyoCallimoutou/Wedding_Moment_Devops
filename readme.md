## Projet Devops 

Le projet consiste à automatiser la mise en place d'une architecture de bout en bout afin d'héberger un site web.

## Architecture
SCHEMA DE NOTRE ARCHITECTURE
#### Vagrant
1 - Pour ce faire nous avons installer Vagrant sur notre machine physique qui vas créer et configuré un environnement de développement virtuels.
  
#### Ansible
2 - Ensuite nous avons installer Ansible pour télécharger et configuré tout les composants nécessaires à notre environnement virtuel pour l'herbergement de notre site web 
  
#### Docker
3 - Enfin nous avons Docker qui a été installer grâce à ansible et configurer pour créer des conteneurs et ainsi pour pouvoir séparer notre site en plusieurs micros processus.

Dans un premier temps nous créons un conteneur avec une image docker qui est un package léger er autonome qui inclut tout ce qui est nécessaire pour l'exécution de notre site :
* exemple d'installation dans notre image msql ...
* exemple d'installation dans notre image msql ...
* exemple d'installation dans notre image msql ...
