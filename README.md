# Development Stack (version 1) for CAAIR center @ CCHMC

### The source repo for the development environment is https://github.com/ml-tooling/ml-workspace

#### Packages specific for CCHMC will include:
       1. DVC
       2. MONAI
       3. SimpleITK
       4. Pydicom
       5. Pynrrd
       6. Tables
       7. Pygar
    These packages are added under src/devenv_v1.0/install_pip.sh and src/Dockerfile.usefulpackages calls the .sh file.

#### To build ml-workspace image for your system:
    
    docker build -t mlworskpace:yourtag ml-workspace-build/
    
    ml-workspace-build/ml-workspace-gpu and ml-workspace-build/ml-workspace-cpu have the complete docker files to build from scratch.  

#### Docker compose dev-stack
    dev-stack/docker-compose-reference.yml shows 
    - how to spin up a minio-gateway container that uses a remote CIFS mounted drive as primary  storage while using the SSD on the GPU nodes for fast caching. 
    - how to run an orthanc DICOM server that uses a minio bucket as its primary storage for images.
    - how multiple development containers (ml-workspace) with their own authentication, persistent storage and dedicated Nvidia GPUs can be provisioned. 

#### Resource Monitoring
  - ml-workspace has lot of netglance to monitor resource utilization for each dev container.
  - For overall resource monitoring of containers, gpus, cpus, memory and storage, prometheuse and grafana based monitoring stack was provisioned under Docker-Compose-Prometheus-and-Grafana folder.
  - This stack was derived heavily from https://github.com/utkuozdemir/nvidia_gpu_exporter
  and https://github.com/Einsteinish/Docker-Compose-Prometheus-and-Grafana repos.