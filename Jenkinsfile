pipeline
{
    agent any
    stages
    {
        stage('ContDowload')
        {
            steps
            {
                git 'https://github.com/ChiduralaRohith2/mymaven.git'
            }
        }
        stage('ContBuild')
        {
            steps
            {
                sh 'mvn package'
            }
        }
        stage('ContDeployment')
        {
            steps
            {
                sh 'scp /var/lib/jenkins/workspace/DeclarativePipeline1/webapp/target/webapp.war ubuntu@172.31.23.161:/var/lib/tomcat10/webapps/testapp.war'
            }
        }
        stage('ContTesting')
        {
            steps
            {
                git 'https://github.com/ChiduralaRohith2/myfunctionaltesting.git'
                sh 'java -jar  /var/lib/jenkins/workspace/DeclarativePipeline1/testing.jar'
                
            }
        }
        stage('ContDelivery')
        {
            steps
            {
                sh 'scp /var/lib/jenkins/workspace/DeclarativePipeline1/webapp/target/webapp.war ubuntu@172.31.16.206:/var/lib/tomcat10/webapps/prodapp.war'
            }
        }
    }
}
