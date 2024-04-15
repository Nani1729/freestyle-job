pipeline {
  agent any
  tools {
  maven 'MVN_HOME'
  }
  stages {
    stage('mvn-clean') {
      steps {
        sh 'mvn compile'
      }
    }
    stage('docker-login') {
      steps {
        sh 'docker version'
        sh 'docker login --username manojreddy12 --password Manoj@107'
      }
    }
    stage('docker-build') {
      steps {
        sh 'sudo docker build -t manojreddy12/docker:v5.0.8 .'
      }
    }
  }
}
      
