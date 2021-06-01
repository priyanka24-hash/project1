pipeline {
    agent any
    
    tools {
        //jdk 'Java8'
        //maven "maven38"
    }
    stages {
        stage('master'){
       

              steps {
                        git branch: 'master', credentialsId: 'github-cred', url: 'https://github.com/priyanka24-hash/project1.git'
                        sh "ls -lart ./*"
                        sh "git master -a"
                        sh "git checkout master"
                        
                // Run Maven on a Unix agent.
                        echo "push happened on master"
                    }
                
                }

        }
    
}
