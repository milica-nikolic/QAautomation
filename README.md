# QAautomation overview

In this project, it was necessary to create an image which contains the test-automation platform made by the QA department.

## Usage of Dockerfile

Dockerfile is used for creation of image milica16/qaauto:latest which was later uploaded to DockerHub.

## Usage of runauto.sh

Script that fills logs with dummy data on specific location in container (/qaauto/).

## Usage of runQAtests.sh

Main entry point of this example. Script is used for pulling and running specific Docker image and validation of log file content with additional color coding of result.

## Usage of workloadConfig.yml

Advise of workload that should be used in Kubernetes. This configuration is scheduled to run every day at 2 am.