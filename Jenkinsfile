pipeline {
  agent any
  tool name: 'MVN_HOME', type: 'maven'
  stages {
    stage('mvn-clean') {
      steps {
        sh 'mvn compile'
      }
    }
  }
}
      
