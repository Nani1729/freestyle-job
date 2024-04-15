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
        sh 'docker login --username manojreddy12 --password-stdin Manoj@107'
      }
    }
  }
}
      
