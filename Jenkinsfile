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
  }
}
      
