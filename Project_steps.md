# Project Docker Microcredential

## Git

The original repository was forked and cloned.  
Changes to README.md are performed directly on the main branch.  
Changes to Dockerfiles are performed in their own branch.  

## Containerize training the machine learning model

Original Dockerfile.train worked on in branch `containerize_train`.  
Completed TO DOs in the file and added commands to Dockerfile.train as comments.  

## Containerize serving of the machine learning model

Original Dockerfile.infer worked on in branch `containerize_serve`.  
Reorganized the Dockerfile.infer and added commands to build and run as comments.  

## Train and run the machine learning model using Docker

Building image and running container commands are in Dockerfile.train  
It results in the `iris_model.pkl` file to be used by the next step.  

## Run the Docker container serving the machine learning model

Building image and running container commands are in Dockerfile.infer  
The message `Welcome to Docker Lab` can be found at http://localhost:8080  

## Store the Docker images on your personal account on Docker Hub
- Login with  
`docker login`  
- Tagging images  
`docker tag sklearn_train:v1 rabuono/skelearn_train:v1`  
`docker tag sklearn_serve:v1 rabuono/skelearn_serve:v1`  
- Pushing images  
`docker push rabuono/skelearn_train:v1`  
`docker push rabuono/skelearn_serve:v1`  

## Building docker for multiple platforms

Running the following command to build v2 for the images, so that they can support multiple platforms:  
`docker buildx build --platform linux/amd64,linux/arm64 -t mydockerimage:latest .`  

Leading to the two commands:  
`docker buildx build --platform linux/amd64,linux/arm64 -t sklearn_train:v2 -f Dockerfile.train .`  
`docker buildx build --platform linux/amd64,linux/arm64 -t sklearn_serve:v2 -f Dockerfile.infer .`  

## Store multi-platform Docker images on your personal account on Docker Hub
- Login with  
`docker login`
- Tagging images  
`docker tag sklearn_train:v2 rabuono/skelearn_train:v2`  
`docker tag sklearn_serve:v2 rabuono/skelearn_serve:v2`  
- Pushing images  
`docker push rabuono/skelearn_train:v2`  
`docker push rabuono/skelearn_serve:v2`  

## Building apptainer images  
- Run `image_build.sh` to build by downloading from docker hub  
- Produces two log files in addition to the slurm.out file  
- Alternative `image_build_ugent.sh` file provided to buildin in HPC Ugent, that leads to no `--fakeroot` related `xattrs` warnings. Corresponding folder for HPC Ugent logs is also provided. 


