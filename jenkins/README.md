

To run the image using a persistent data directory

    run -v {PATH}/data:/root/.jenkins -d quintenk/jenkins

If you've installed plugins or did other thing, you can commit the image using

    docker commit -m='Installed swarm plugin' -run='{"Cmd":["supervisord", "-c", "/etc/supervisor.conf"], "PortSpecs": ["8080"]}' 2804051811a8 quintenk/jenkins-swarm
