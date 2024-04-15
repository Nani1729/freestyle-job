pipeline {
  agent any
  tools {
  name: 'MVN_HOME', type: 'maven'
  }
  stages {
    stage('mvn-clean') {
      steps {
        sh 'mvn compile'
      }
    }
  }
}
      
