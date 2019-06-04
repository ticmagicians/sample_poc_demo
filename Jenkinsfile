pipeline {
    agent any
  
    stages {
        stage('Checkout') {
            steps {
                echo 'Checkout code from Github.....!!'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
				script {
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
						sh '''
							/usr/local/bin/terraform apply -input=false -auto-approve
						'''
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
