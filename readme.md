## Projet Devops 

Le projet consiste à automatiser la mise en production de l'application Wedding Moment: 
- https://github.com/TonyoCallimoutou/Wedding_Moment_Front 
- https://github.com/TonyoCallimoutou/Wedding_Moment_Back 

### Prérequis
- Vagrant
- Ansible
- Plugin 'dotenv' de vagrant (voici la commande pour l'installer : 'vagrant plugin install dotenv')

### Lancement
- Modifier le fichier .env selon les variables d'environnement.
- Lancer la commande 'vagrant up'
- Le site sera accessible selon les informations transmis dans le fichier .env à l'adresse <<IP_VM>>:<<PORT_WEB>> (exemple: 192.168.56.1:8080)
