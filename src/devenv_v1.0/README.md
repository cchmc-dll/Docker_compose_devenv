# Adopting a more efficient style to build docker images for development environment v1.0 | AI-ARC-CORE-CCHMC
### Style is based on RPY2DOCKER project at https://github.com/rpy2/rpy2-docker.git
Major change is using .sh files to group all major installations, so the docker image itself has fewer layers as fewer RUN commands will be executed - Elan
 
