<h1>AWS Static Portfolio Web Application Project Summary</h1>
The aim of this project is to automate the deployment of a containerized static webpage into an AWS cloud architecture provisioned in Terraform using CI/CD pipelines with GitHub Actions. The project is split into two parts, infrastructure and app deployment automation which is done with both the AWS_WebApp_Project_Terraform
and AWS_WebApp_Project repositories. 

<h1>Web Application Deployment</h1>
This repository contains the HTML code to create the static webpage and the Dockerfile uesd to create the Docker image. The image uses the alpine Linux distributor and
the web page is hosted on the Apache2 webserver. The Docker image replaces the Apache2 index page with the Static_Portfolio webpage. The image is ran in the EC2 instance
from the architecture created in the deployment from the AWS_WebApp_Project_Terraform respoitory. Be sure to run the Terraform Plan & Apply workflow from that repository
before running the App Deploy workflow from this repository. 

<h1>Deployment Workflow</h1>
For this workflow, Dockerhub credentials from GitHub secrets are used to log into Dockerhub. The Dockerfile from this repository is used to create a Docker image which is 
then pushed into Dockerhub. AWS SSM commands are send to the EC2 instance using its tags to log into Dockerhub, pull the image, and run a container that routes traffic
from port 8080 to port 80 of the container. Refer to the GitHub Actions Workflows section from the Project Documentation for further technical detail.

<h1>Full GitHub Actions Workflow Architecture Flow Chart</h1>
<img width="1745" height="1287" alt="image" src="https://github.com/user-attachments/assets/83024a32-2583-4485-8bdf-800130813890" />

<h1>Project Documentation</h1>
https://1drv.ms/w/c/d18af1f250bff2cb/IQCMALwxe5DlRImUC7b7NCChAR8tm6k4imerkNQGmFQoZ4o?e=khMGve 
