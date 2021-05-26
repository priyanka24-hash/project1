pipeline {
    agent any
    
    tools {
        //jdk 'Java8'
        maven "maven38"
    }
    stages {
        stage('master'){
            when {
                    branch 'master'
                }

              steps {
                        git branch: 'master', credentialsId: 'github-cred', url: 'https://github.com/priyanka24-hash/project1.git'
                        sh "ls -lart ./*"
                        sh "git master -a"
                        sh "git checkout master"
                        mvn test
                // Run Maven on a Unix agent.
                        echo "push happened on master"
                    }
                
                }

        }
    
}
