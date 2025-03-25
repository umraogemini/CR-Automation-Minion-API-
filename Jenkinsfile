# Jenkins Pipeline for CR Automation- Automates CR creation & approval using Minion API in Jenkins
pipeline {
    agent any
    environment {
        TF_VAR_minion_api_token = credentials('minion-api-token')
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('Check CR Approval') {
            steps {
                script {
                    def crID = sh(script: 'terraform output -raw cr_id', returnStdout: true).trim()
                    def approvalStatus = sh(script: "curl -s '${MINION_API_URL}/check-cr?cr_id=${crID}' | jq -r '.status'", returnStdout: true).trim()
                    
                    if (approvalStatus == "approved") {
                        echo "CR Approved! Proceeding with Deployment..."
                    } else {
                        echo "CR Not Approved! Stopping Deployment..."
                        error("Change Request not approved!")
                    }
                }
            }
        }
    }
}
