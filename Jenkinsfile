pipeline {
    agent any
    stages {
        stage('github validation') {
            steps {
                git url: 'https://github.com/saidevops8989/addressbook-project.git'
            }
        }
        stage('compiling the code') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('testing the code') {
            steps {
                sh 'mvn test'
            }
        }
        stage('qa of the code') {
            steps {
                sh 'mvn pmd:pmd'
            }
        }
        stage('package') {
            steps {
                sh 'mvn package'
            }
        }
        stage("deploy the project on tomcat") {
            steps {
                sshPublisher(
                    publishers: [
                        sshPublisherDesc(
                            configName: 'tomcat-server', // Name of the SSH server configuration
                            transfers: [
                                sshTransfer(
                                    sourceFiles: 'target/addressbook.war',
                                    remoteDirectory: '/var/lib/tomcat/webapps/'
                                )
                            ]
                        )
                    ]
                )
            }
        }
    }
}
