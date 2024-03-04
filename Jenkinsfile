pipeline {
    agent any
    
    // environment {
    //   AWS_CREDENTIALS_FILE = credentials('aws_credentials_file')
    // }

    tools {
      Terraform 'Terraform'
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
            sh "${tool 'Terraform'}/terraform --version"
            sh "${tool 'Terraform'}/terraform init"
            // withCredentials([file(credentialsId: 'aws_credentials_file', variable: 'AWS_CREDENTIALS_FILE')]) {
            //   sh "${tool 'terraform'}/terraform init"
            // }
          }
        }
      }

      // stage('Terraform Plan') {
      //   steps {
      //     script {
      //       sh "${tool 'terraform'}/terraform plan -out=tfplan"
      //     }
      //   }
      // }
    }
}
