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
                        bat '\\tools\\msys64\\usr\\bin\\bash build_freefem_windows.sh'
                    }
                }
                
                stage('Build Linux') {
                    agent {
                        label 'linux'
                    }
                    steps {
                        sh 'docker build -t freefem .'
                    }
                }
            }
        }
    }
}
