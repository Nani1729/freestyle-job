pipeline {
    agent {
        docker {
                    image 'manojreddy12/docker:v5.0.8'
                    // Run the container on the node specified at the
                    // top-level of the Pipeline, in the same workspace,
                    // rather than on a new node entirely:
                    reuseNode true
                }
            }
    stages {
        stage('Build') {      
            steps {
                sh 'mvn --version'
            }
        }
        stage('mvn-clean') {
            steps {
                sh 'mvn clean'
            }
        }
        stage('mvn-compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('mvn-test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('mvn-package') {
            steps {
                sh 'mvn package'
            }
        }
        stage('build && SonarQube analysis') {
            steps {
                withSonarQubeEnv('sonar-qube') {
                    // Optionally use a Maven environment you've configured already
                    withMaven(maven:'Maven') {
                        sh 'mvn clean package sonar:sonar'
                    }
                }
            }
        }
    }
}
