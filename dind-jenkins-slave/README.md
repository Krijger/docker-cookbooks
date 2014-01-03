Complete image to run Jenkins as a slave for jobs that need Docker
==================================================================

Installed are:
- Docker (latest version)
# - Subversion & Git
# - Maven
- Supervisord (inherited)
- Oracle Java 7 Development Kit (inherited, and for running the jenkins slave jar)

Run with

    docker run
        -privileged
        -v ${absolute path to the directory for the docker files for the container - needed to run docker in docker}:/var/lib/docker
        -v ${absolute path to the jenkins directory - helpful for restarts}:/var/jenkins
        -e JENKINS_PORT_8080_TCP_ADDR=${host for master jenkins}
        [-e JENKINS_PORT_8080_TCP_PORT=${port for master jenkins, defaults to 8080}]
        -e SLAVE_NAME=${slave name, you name the slave when creating the node on the master jenkins}
        [-e JENKINS_SECRET=${secret for jenkins - if needed you can find this in the information page for the slave node (on master)}]
        -dns 127.0.0.1
        -d quintenk/dind-jenkins-slave

TCP port for JNLP slave agents
http://jenkins.rijksoverheid.nl/configureSecurity/
