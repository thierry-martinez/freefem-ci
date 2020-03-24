pipeline {
    agent none

    stages {
        stage('Build Linux') {
            agent {
                label 'linux'
            }
            steps {
                sh 'docker build -t freefem docker'
            }
        }
    }
}
