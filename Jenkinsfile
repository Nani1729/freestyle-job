pipeline {
    agent any
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
        stage('SonarQube analysis') {
            steps {
                // Run SonarQube scanner
                script {
                    def scannerHome = tool 'sonar' // Make sure to configure this tool in Jenkins
                    withSonarQubeEnv('sonar-qub') {
                        sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=demo-app"
                    }
                }
            }
        }
    }
}
