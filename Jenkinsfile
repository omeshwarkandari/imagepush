pipeline {
  agent any
    tools {
	  maven 'maven 3.6'
	  jdk 'JDK8'
    }
    stages {      
        stage('Build maven ') {
            steps { 
                    sh 'pwd'      
                    sh 'mvn  clean install package'
            }
        }
        
        stage('Copy Artifact') {
           steps { 
                   sh 'pwd'
		   sh 'cp -r target/*.jar docker'
           }
        }
	
	stage('build & push image'){
            steps{
                script {
                    def customImage = docker.build('omeshwarkandari/petclinic', "./docker")
                    docker.withregistry('https://hub.docker.com/repository/docker/omeshwar/omjyokan', 'omeshwar-dockerhub') {
                    customImage.push("${env.BUILD_NUMBER}")
                    }
                }
            }
        }        
    }
}
