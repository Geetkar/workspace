def workspace_dir = "/home/jenkins/agent/workspace/${env.JOB_BASE_NAME}"
def project_name = "master-chart"
def isDeployerJob = (env.JOB_BASE_NAME).contains("deploy") ? "true" : "false"

// These variables come from the build parameters in the Jenkins job
def git_branch = git_branch
def release_version


if (isDeployerJob == "true") {
    // Extracting the release version from the branch
    def temp = git_branch.split("/")
    release_version = temp[temp.length - 1]

    switch(environment) {
      case "dev":
        hs_jdbc_url="jdbc:postgresql://40.xx.xx.xx:5432/dbname"
        db_username="username"
        db_password="pwd"
        break
      default:
        break
    }
} 

pipeline {

  agent {
    kubernetes {
      cloud 'eks-tools-13'
      yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
  - name: azcli-kubectl-helm
    image: internal.docker.cioxhealth.com/azcli-kubectl-helm
    command:
      - cat
    tty: true
  - name: docker
    image: docker
    command:
      - cat
    tty: true
    privileged: true
    volumeMounts:
      - name: dockersock
        mountPath: /var/run/docker.sock
  volumes:
    - name: dockersock
      hostPath:
        path: /var/run/docker.sock
"""
    }
  }

  stages {
        
    stage('Install Database Scripts') {
      when {
        expression {
          "${isDeployerJob}" == "true"
        }
      }
      steps {
        container('docker') { 
            sh """
               docker run --rm --network="host" -v ${workspace_dir}/db:/liquibase/changelog liquibase/liquibase --url=${hs_jdbc_url} --changeLogFile=db.changelog-master.yaml --driver=org.postgresql.Driver --username=${db_username} --password=${db_password} --logLevel=info  update
            """
        }
      }
    }   
  
  }
}

 