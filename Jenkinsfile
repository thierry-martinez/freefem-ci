pipeline {
    agent none

    stages {
        stage('Build') {
            parallel {
                stage('Build windows') {
                    agent {
                        label 'windows'
                    }
                    steps {
                        cmd '\\tools\\msys64\\usr\\bin\\bash build_freefem.sh'
                    }
                }
                
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
    }
}
