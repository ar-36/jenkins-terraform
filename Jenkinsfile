pipeline {
    agent any
    
    environment {
      AWS_CREDENTIALS_FILE = credentials('aws_credentials_file')
    }

    tools {
      terraform 'terraform'
    }

    stages {
      
      stage('Checkout') {
        steps {
          checkout scm
        }
      }

      stage('Terraform Init') {
        steps {
          script {
            withCredentials([file(credentialsId: 'aws_credentials_file', variable: 'AWS_CREDENTIALS_FILE')]) {
              // sh "${tool 'terraform'}/terraform init"
              sh "export AWS_ACCESS_KEY_ID=$(grep aws_access_key_id $AWS_CREDENTIALS_FILE | cut -d' ' -f3)"
              sh "export AWS_SECRET_ACCESS_KEY=$(grep aws_secret_access_key $AWS_CREDENTIALS_FILE | cut -d' ' -f3)"
              sh "${tool 'terraform'}/terraform init -backend-config='access_key=${AWS_ACCESS_KEY_ID}' -backend-config='secret_key=${AWS_SECRET_ACCESS_KEY}'"
            }
          }
        }
      }

      stage('Terraform Plan') {
        steps {
          script {
            sh "${tool 'terraform'}/terraform plan -out=tfplan"
          }
        }
      }
    }
}
