pipeline {
    agent any // Specifies that the pipeline can run on any available agent

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                echo 'CONSISTENCY'
                // Replace with your actual build commands, e.g.,
                // sh 'mvn clean install'
                // sh 'npm install && npm run build'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Replace with your actual test commands, e.g.,
                // sh 'mvn test'
                // sh 'npm test'
                // junit '**/target/surefire-reports/*.xml' // For publishing JUnit test results
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                // Replace with your actual deployment commands, e.g.,
                // sh 'scp target/my-app.jar user@remote-server:/opt/apps/'
            }
        }
    }

}
