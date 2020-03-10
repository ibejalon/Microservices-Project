# Microservices-project-udacity
[![CircleCI](https://circleci.com/gh/ibejalon/microservices-project-uda.svg?style=svg)](https://circleci.com/gh/ibejalon/microservices-project-uda)

This project operationalize a Python flask app that is used to predict housing prices from a pre-trained sklearn model that has features such as average rooms in a home and data about highway access, teacher-to-pupil ratios et.c through API calls.

The repository contains a .circleci folder, a README.md file, a Dockerfile and Makefile, an app.py file (Python Flask app), a prediction script, and the scripts to run and upload a microservice on Docker and Kubernetes.

It also contains an output text files: docker_out.txt and kubernetes_out.txt that include the log output after a prediction is made.

ENVIRONMENT SET UP
Created and activated a virtualenv
make install to install the necessary dependencies


RUN PYTHON FLASK APP
python app.py
Run in docker :./run_docker.sh
Run Kubernetes:./run_kubernetes.sh

KUBERNETES SETUP
Setup and Configure Docker locally
Setup and Configure Kubernetes locally
Create Flask app in container
