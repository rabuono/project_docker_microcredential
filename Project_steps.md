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

