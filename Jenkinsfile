pipeline {
    agent any
    
    tools {
        //jdk 'Java8'.
        maven "maven38"
    }


    stages {
        stage('build') {
            parallel {
                stage('develope'){
                    steps {
                        git branch: 'develope', credentialsId: 'github-cred', url: 'https://github.com/priyanka24-hash/piyu.git'
                        sh "ls -lart ./*"
                        sh "git branch -a"
                        sh "git checkout develope"
                        mvn test
                // Run Maven on a Unix agent.
                        echo "push happened on branch2"
                        
                    }
                
                }
        
                stage('main') {
                    steps {
                
                        git branch: 'master', credentialsId: 'github-cred', url: 'https://github.com/priyanka24-hash/piyu.git'
                        sh "ls -lart ./*"
                        sh "git branch -a"
                        sh "git checkout master"

                // Run Maven on a Unix agent.
                        echo "push happened on main branch"
                
                    }
                }
            }

        }
    }
}
