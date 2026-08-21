pipeline {
    agent any

    environment {
        ENV = "${env.BRANCH_NAME}"
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"
    }
    stages{
        stage('checkout'){
            steps{
                git branch: "${env.BRANCH_NAME}", url: 'https://github.com/dirt73/weekday-terra.git'
            }
        }
        stage('Terraform InIt'){
            steps {
                dir("$TF_WORKDIR") {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan'){
            steps{
                dir("${TF_WORKDIR}") {
                    sh 'terrafrom plan -out=tfplan'
                    sh 'terrafrom show -no-color tfplan > tfplan.txt'
                    sh 'cat tfplan.txt'
                }
            }
        }
           stage('Approval') {
           /*    
           when {
            expression { env.BRANCH_NAME == 'production'}
           }
           */
           steps{
            input message: "Approve the deployment to production?", ok: 'Deploy'
           }
           }

        stage('Terraform Apply'){
            steps{
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}