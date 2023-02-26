## Projet Devops 

Le projet consiste à automatiser la mise en place d'une architecture de bout en bout afin d'héberger un site web.

## Architecture
SCHEMA DE NOTRE ARCHITECTURE

![alt text](https://github.com/TonyoCallimoutou/Project_Devops/blob/68bb6939389379cc20abb561e1027d5c4a63bdc8/Schema%20Architecture.png)
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

## Méthodologie

Dans le cadre de ce projet, nous avons adopté une méthodologie DevOps pour assurer une intégration continue (CI) et un déploiement continu (CD) de notre site web. Nous avons utilisé plusieurs outils et technologies pour mettre en place cette méthodologie, notamment GitHub pour la gestion de versions, Vagrant pour la création d'environnements de développement virtuels, Ansible pour la configuration et le déploiement de notre application et Docker pour créer et gérer nos conteneurs.

Nous avons utilisé GitHub comme plateforme de gestion de versions pour notre code source. Cette plateforme nous a permis de travailler de manière collaborative et de partager notre code source avec l'équipe tout en suivant l'évolution des différentes versions. Nous avons également utilisé des outils de gestion de pull requests et de code reviews pour améliorer la qualité du code et faciliter l'intégration continue.

Nous avons utilisé Vagrant pour créer un environnement de développement virtuel, qui nous a permis de travailler de manière isolée et de reproduire l'environnement de production dans lequel notre application sera déployée. Cela nous a permis de tester notre application dans un environnement contrôlé et de détecter les erreurs plus rapidement.

Nous avons utilisé Ansible pour la configuration et le déploiement de notre application. Ansible nous a permis de déployer notre application de manière rapide et efficace sur des machines virtuelles en utilisant des playbooks et des rôles préconfigurés.

Nous avons également utilisé Docker, avec qui on a pu créer une image de notre application et la déployer dans des conteneurs sur différents environnements de développement, de test et de production. Cela nous a permis de garantir que notre application fonctionnait de manière cohérente dans chaque environnement, tout en réduisant les conflits entre les différentes dépendances.

En utilisant ces différentes technologies et méthodologies, nous avons pu mettre en place une CI/CD efficace pour notre application. Nous avons également pu gérer notre code source de manière efficace et travailler de manière collaborative en utilisant GitHub.

