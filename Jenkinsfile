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
						
						
						//println "initiating terraform INIT......................."
						//sh '''
						//	/usr/local/bin/terraform init -input=false
						//'''
						
						//println "initiating terraform PLAN......................."
						//sh '''
						//	/usr/local/bin/terraform plan -input=false
						//'''
						
						//println "initiating terraform APPLY......................."
						//sh '''
						//	/usr/local/bin/terraform apply -input=false -auto-approve
						//'''
						
						//println "initiating terraform DESTROY......................."
						//sh '''
						//	/usr/local/bin/terraform destroy -input=false -auto-approve
						//'''
						
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
