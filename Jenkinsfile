pipeline {
    agent any
    
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
            sh "ls"
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
