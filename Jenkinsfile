pipeline {
    agent any
    
    // environment {
    //   AWS_CREDENTIALS_FILE = credentials('aws_credentials_file')
    // }

    // tools {
    //   Terraform 'Terraform'
    // }

    stages {
      
      stage('Checkout') {
        steps {
          checkout scm
        }
      }

      stage('Init') {
        steps {
          script {
            sh "terraform init"
          }
        }
      }

      stage('Plan') {
        steps {
          script {
            sh "terraform plan"
          }
        }
      }
      
      stage('Apply') {
        steps {
          script {
            sh "terraform apply -auto-approve"
          }
        }
      }
    }
}
