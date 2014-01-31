DOOD (Docker outside of Docker)
===============================

Use this image to run docker commands on the host. Start it with a link to your /run directory so it can use "docker.sock" to use the docker installation on the host. A usecase for this image would be to manage your images (e.g. with a Jenkins installation that is hooked into git).

run with

    docker run -i -t -v /run:/run quintenk/dood /bin/bash