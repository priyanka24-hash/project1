pipeline {
    agent any
    
    tools {
        //jdk 'Java8'
        maven "maven38"
    }


    stages {
        stage('build') {
            parallel {
                stage('branch2'){
                    steps {
                        git branch: 'branch2', credentialsId: 'github-cred', url: 'https://github.com/priyanka24-hash/piyu.git'
                        sh "ls -lart ./*"
                        sh "git branch -a"
                        sh "git checkout branch2"

                // Run Maven on a Unix agent.
                        echo "push happened on branch2"
                    }
                
                }
        
                stage('main') {
                    steps {
                
                        git branch: 'main', credentialsId: 'github-cred', url: 'https://github.com/priyanka24-hash/piyu.git'
                        sh "ls -lart ./*"
                        sh "git branch -a"
                        sh "git checkout main"

                // Run Maven on a Unix agent.
                        echo "push happened on main branch"
                
                    }
                }
            }

        }
    }
}
