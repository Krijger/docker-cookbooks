#!/bin/bash
set -eux

JENKINS_AUTHORITY=${JENKINS_PORT_8080_TCP_ADDR}:${JENKINS_PORT_8080_TCP_PORT:-8080}
SLAVE_JAR_URL="http://${JENKINS_AUTHORITY}/jnlpJars/slave.jar"
JNLP_URL="http://${JENKINS_AUTHORITY}/computer/${SLAVE_NAME}/slave-agent.jnlp"

VAR_LIB_JENKINS="/var/lib/jenkins"
SLAVE_JAR="${VAR_LIB_JENKINS}/slave.jar"

if [ ! -f ${SLAVE_JAR} ] ; then
    mkdir -p ${VAR_LIB_JENKINS}
    wget --retry-connrefused -t inf ${SLAVE_JAR_URL} -O ${SLAVE_JAR}
fi

if [[ $JENKINS_SECRET ]] ; then
    java -jar ${SLAVE_JAR} -jnlpUrl ${JNLP_URL} -secret ${JENKINS_SECRET}
else
    java -jar ${SLAVE_JAR} -jnlpUrl ${JNLP_URL}
fi
