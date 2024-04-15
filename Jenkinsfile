pipeline {
  agent {
    docker {
      image 'manojreddy12/docker:v5.0.8'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
    stage('mvn-clean') {
      steps {
        sh 'mvn compile'
      }
    }
  }
}
      
