<<<<<<< HEAD
pipeline {
        agent {
            label 'master'
        }
        tools {
            maven 'mymaven'
            jdk 'myjava'
        }
    stages {

        stage ('Checkout the code') {
            steps{
                git branch: 'master', url: 'https://github.com/sanjayraghuwanshi/docker-jenkins-integration.git'
            }
        }
        stage ('Code Compile') {
            steps{
                sh """
                mvn compile
                """
            }
        }
        stage ('Packaging') {
            steps {
                sh """
                mvn package
                """
            }
        }
		stage ('Docker build') {
            steps {
                sh """
                docker build -t sanjayraghuwanshi/dockerjenkins:latest .
                """
            }
        }
		stage ('Docker Push') {
			steps {
			withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')])
			{
			sh """
			docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}
			docker push sanjayraghuwanshi/dockerjenkins:latest
			docker run sanjayraghuwanshi/dockerjenkins:latest
			"""		}
				}
			}
		}
=======
pipeline {
        agent {
            label 'master'
        }
        tools {
            maven 'mymaven'
            jdk 'myjava'
        }
    stages {
        
        stage ('Checkout the code') {
            steps{
                git branch: 'master', url: 'https://github.com/sanjayraghuwanshi/docker-jenkins-integration.git'
            }
        }
        stage ('Code Compile') {
            steps{
                sh """
                mvn compile
                """
            }
        }
        stage ('Packaging') {
            steps {
                sh """
                mvn package
                """
            }
        }
		stage ('Docker build') {
            steps {
                sh """
                docker build -t sanjayraghuwanshi/docker-jenkins-integration:latest .
                """
            }
        }
		stage ('Docker Push') {
			steps {
			withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
			sh """
			docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}
			docker push sanjayraghuwanshi/docker-jenkins-integration:latest
			"""		}
				}
			}
		}
>>>>>>> d0e92e3011ab94eb77f25ed40886ac7d973583e7
	}