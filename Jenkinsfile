node{
def app
  stage('Clone repository'){
    checkout scm
  }
  stage('Build image'){
    app = docker.build("devcodeslash/dockertest")
  }
  stage('Test image'){
    app.inside{
      echo "Tests passed"
    }
  }
  stage('Push image'){
    docker.withRegistry('https://registry.hub.docker.com','docker-hub'){
      app.push("${env.BUILD_NUMBER}")
      app.push("latest")
    }
        echo "trying to push image to docker hub"
  }
}
