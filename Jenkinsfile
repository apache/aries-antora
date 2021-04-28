pipeline {
    agent {
//        docker {
//	    image 'node:14-alpine'
            label 'git-websites'
//        }
    }

    stages {
        stage('build') {
//            environment {
//                ARIES_SITE_CREDS = credentials('aries-site-pub-PAT')
//            }
            steps {
                sh 'rm -rf build'
// clone the aries-site-pub repo
                sh 'git clone --depth 1 https://gitbox.apache.org/repos/asf/aries-site-pub.git build/site'
                dir('build/site') {
                    sh 'git rm -r .'
                }

                sh 'npm run plain-install'
                sh 'npm run build-noclean'

                dir('build/site') {
		  sh 'git add .'
		  sh 'echo `git commit -m "site build"`'
                  sh 'git push https://gitbox.apache.org/repos/asf/aries-site-pub.git master'
		}
            }
        }
    }
}