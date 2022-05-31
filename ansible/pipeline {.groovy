pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'liquibase/liquibase'
                    // Run the container on the node specified at the top-level of the Pipeline, in the same workspace, rather than on a new node entirely:
                    reuseNode true
                }
            }
            steps {
                sh 'liquibase --version'
                sh 'liquibase init project'
                sh 'liquibase init start-h2'
            }
            
        }
        steps {
            import java.sql.*;
             public class Test {
            public static void main(String[] a)
                throws Exception {
             Connection conn = DriverManager.
                 getConnection("jdbc:h2:~/test", "sa", "");
            // add application code here
            conn.close();
                }
            }  
        }
    }
}