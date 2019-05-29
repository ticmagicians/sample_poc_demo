pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                echo 'Checkout code from Github.....'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
				script {
					//withAWS(region: 'ca-central-1', credentials: "sz3++lQ+Uk1YjRJvpx0KrucUyinh3skonTi6CCvX") {
					withAWS(region: 'ca-central-1', credentials: "AWS_TerraformUserKey") {
							println 'inside script....'
							println "Workspace: ${WORKSPACE}" 
							
							
							println "initiating terraform init......................."
							sh '''
								/usr/local/bin/terraform init -input=false
							'''
							
							println "initiating terraform plan......................."
							sh '''
								/usr/local/bin/terraform plan -input=false
							'''
							
							
							println "initiating terraform apply......................."
						}
				}
            } 
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
