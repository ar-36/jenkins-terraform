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

      stage('Validate') {
        steps {
          script {
            sh "terraform validate"
          }
        }
      }
      
      stage('Plan') {
        steps {
          script {
            sh "terraform plan -out=tfplan"
          }
        }
      }
      
      stage('Apply') {
        steps {
          script {
            input "Do you want to apply the Terraform changes?"
            sh "terraform apply -auto-approve tfplan"
          }
        }
      }

      // stage('Destroy') {
      //   steps {
      //     input 'Destroy Resources?'
      //     sh "terraform destroy -auto-approve"
      //   }
      // }
    }
}
