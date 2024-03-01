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
            // sh "mkdir -p ~/.aws/credentials"
            // sh "cp $AWS_CREDENTIALS_FILE ~/.aws/credentials"
            withCredentials([file(credentialsId: 'aws_credentials_file', variable: 'AWS_CREDENTIALS_FILE')]) {
              sh "${tool 'terraform'}/terraform init"
            }
          }
        }
      }

      stage('Terraform Plan') {
        steps {
          script {
            sh 'terraform plan -out=tfplan'
            sh "${tool 'terraform'}/terraform plan -out=tfplan"
          }
        }
      }

      // stage('Terraform Apply') {
      //   steps {
      //     script {
      //       sh 'terraform apply -auto-approve tfplan'
      //     }
      //   }
      // }
    }

    // post {
    //   always {
    //     deleteDir()
    //     sh 'rm -f ~/.aws/credentials'
    //   }
    // }
}
