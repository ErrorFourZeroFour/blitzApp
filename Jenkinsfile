pipeline {
    agent any

    stages{
         stage ('Flutter Doctor') {
            steps {
                sh "flutter doctor -v"
            }
        }
        
        
        stage('Develop'){
            steps{
                sh "flutter build web --dev"
            }
        }
       
        stage('Flutter Build Web') {
            steps {
                sh "flutter build web --release"
            }
        }

       stage('Cleanup') {
            steps {
                sh "flutter clean"
            }
        }
    }
}