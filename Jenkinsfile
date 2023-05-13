pipeline {
  agent any

  stages {
    stage('Update Code') {
      steps {
        // Récupérer les dernières modifications du code depuis Git
        //git 'https://github.com/votre-repo.git'
      }
    }

    stage('Build and Deploy') {
      steps {
        // Construction et déploiement avec Docker Compose
        sh 'docker-compose up -d'
      }
    }
  }
}