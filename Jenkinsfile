pipeline {
  agent {
    label 'linux'
  }
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
  }
}
      
