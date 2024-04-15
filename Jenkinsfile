pipeline {
  agent any
  tools {
  tool name: 'MVN_HOME', type: 'maven'
  }
  stages {
    stage('mvn-clean') {
      steps {
        sh 'mvn compile'
      }
    }
  }
}
      
