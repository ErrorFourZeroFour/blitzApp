pipeline {
    agent any

    stages{
          stage('GIT PULL') {
            steps {
                git branch: "develop", url: 'https://github.com/ErrorFourZeroFour/blitzApp.git'
            }
        }
        
         stage ('Flutter Doctor') {
            steps {
                echo "FLUTTER_HOME is: ${env.FLUTTER_HOME}"
                sh "${env.FLUTTER_HOME}/flutter doctor -v"
            }
        }
        
        
        stage('Develop'){
            steps{
                echo "DIRECTORY is: ${env.DIRECTORY}"
                sh "cd /Users/kayarci/Desktop/branches/Develop
                ${env.FLUTTER_HOME}/flutter build web"
            }
        }
       
        
    }
}
