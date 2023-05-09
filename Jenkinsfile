pipeline {
  agent any

  stages {
    stage('Install Dependencies') {
      steps {
        dir('AngularFront') {
          sh 'npm install'
        }
        dir('NodeBack') {
          sh 'npm install'
        }
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker-compose up -d'
      }
    }
  }
}