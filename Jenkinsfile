pipeline {
    agent { docker { image 'node:14-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
		sh 'chmod u+x build-publish.sh'
		sh './build-publish.sh'		
            }
        }
    }
}