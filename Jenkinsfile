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
        sh 'sudo docker login --username manojreddy12 --password Manoj@107'
      }
    }
  }
}
      
