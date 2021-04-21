pipeline {
//    agent { docker { image 'node:14-alpine' } }
    agent any
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
		sh 'chmod u+x build-publish.sh'
		sh 'pwd'
		sh 'ls -l'
		sh 'sh build-publish.sh'		

            }
        }
    }
}