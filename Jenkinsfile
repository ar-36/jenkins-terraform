// pipeline {
//     agent any
    
//     environment {
//         TF_VAR_region = 'your_aws_region' // Set your AWS region here
//     }

//     stages {
//         stage('Checkout') {
//             steps {
//                 // Checkout your Terraform code from version control
//                 checkout scm
//             }
//         }

//         stage('Terraform Init') {
//             steps {
//                 script {
//                     // Initialize Terraform
//                     sh 'terraform init'
//                 }
//             }
//         }

//         stage('Terraform Plan') {
//             steps {
//                 script {
//                     // Run Terraform plan and store the output in a plan file
//                     sh 'terraform plan -out=tfplan'
//                 }
//             }
//         }

//         stage('Terraform Apply') {
//             steps {
//                 script {
//                     // Apply Terraform changes using the generated plan file
//                     sh 'terraform apply -auto-approve tfplan'
//                 }
//             }
//         }
//     }

//     post {
//         always {
//             // Cleanup - remove the generated plan file
//             deleteDir()
//         }
//     }
// }
