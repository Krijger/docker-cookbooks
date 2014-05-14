Complete image to run Jenkins as a slave with headless Firefox
==============================================================

Installed are:
- Supervisord (inherited)
- Oracle Java 7 Development Kit (inherited)
- Firefox
- Xvfb headless display driver

Run with access to Docker on the host
-------------------------------------

    docker run
        -v /run/docker.sock:/run/docker.sock
        -v /usr/bin/docker:/usr/bin/docker
        [-v ${absolute path to the jenkins directory - helpful for restarts}:/var/jenkins]
        -e JENKINS_PORT_8080_TCP_ADDR=${host for master jenkins}
        [-e JENKINS_PORT_8080_TCP_PORT=${port for master jenkins, defaults to 8080}]
        -e SLAVE_NAME=${slave name, you name the slave when creating the node on the master jenkins}
        [-e JENKINS_SECRET=${secret for jenkins - if needed you can find this in the information page for the slave node (on master)}]
        -d quintenk/firefox-jenkins-slave

or skip the two -v options if you don't need Docker from the host




