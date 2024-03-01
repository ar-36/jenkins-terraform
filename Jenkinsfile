pipeline {
    agent any
    
    environment {
      AWS_CREDENTIALS_FILE = credentials('aws_credentials_file')
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
            sh "cp $AWS_CREDENTIALS_FILE ~/.aws/credentials"
            sh 'terraform init'
          }
        }
      }

      stage('Terraform Plan') {
        steps {
          script {
              sh 'terraform plan -out=tfplan'
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
