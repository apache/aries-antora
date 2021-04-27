pipeline {
    agent { docker { image 'node:14-alpine' } }
//    agent any
// aries-site-pub-PAT
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
		sh 'chmod u+x build-publish.sh'
		sh 'pwd'
		sh 'ls -l'
//		sh 'sh build-publish.sh'		
                withCredentials([usernamePassword(credentialsId: 'aries-site-pub-PAT', passwordVariable: 'password', usernameVariable: 'user')]) {
		    sh 'sh build-publish.sh'		
                }
            }
        }
    }
}