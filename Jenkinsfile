pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'manojreddy12/docker:v5.0.8'
                    // Run the container on the node specified at the
                    // top-level of the Pipeline, in the same workspace,
                    // rather than on a new node entirely:
                    reuseNode true
                }
            }
            steps {
                sh 'mvn --version'
            }
        }
    }
}
