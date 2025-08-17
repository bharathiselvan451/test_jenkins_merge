pipeline {
    agent any

    triggers {
        GenericTrigger(
            token: 'mytoke', 
            genericVariables: [
                [key: 'gh_action',     value: '$.action']
               
            ],
            causeString: 'Triggered by PR review webhook',
            printContributedVariables: true, 
            printPostContent: true           
        )
    }

    stages {
        stage('Terraform init') {
        
        steps {
                sh 'terraform init'
               
            }
        
        
        }
        stage('Terraform plan') {
            
            steps {
                sh 'terraform plan'
              
            }
        }

        stage('Test') {
            
            steps {
                
                script {
                     if (env.gh_action == "opened") {
                            sh 'terraform validate -json'

                     } 
                 
                  }
                
              
            }
        }
        
        stage('Apply') {
            
            steps {
                
                script {
                     if (env.gh_action == "submitted") {
                              sh 'terraform apply -auto-approve'
                     } 
                 
                  }
                
                
               
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
               
            }
        }
    }
}
