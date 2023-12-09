# Github-ECR

Pre-Requisites:

To automate Docker image upload to AWS Elastic Container Registry (ECR) using GitHub Actions, We need to ensure that we have the following prerequisites in place:

1. AWS Account need an AWS account to create an ECR repository and generate AWS credentials.ECR Repository:


2. IAM User with ECR Access:

Create an IAM user with the necessary permissions to push images to the ECR repository. Attach the AmazonEC2ContainerRegistryPowerUser or a custom policy with ECR permissions.

3.AWS CLI Installed:

Install the AWS Command Line Interface (CLI) on the machine or environment where GitHub Actions will run. Configure the AWS CLI with the credentials of the IAM user created in step 3.
bash
Copy code
aws configure

4.Docker Installed:

Install Docker on the machine or environment where GitHub Actions will run. Ensure that the Docker daemon is running.

5.GitHub Repository:

You need a GitHub repository containing the Dockerfile for your application.
GitHub Personal Access Token (PAT):

Create a personal access token in your GitHub account with the necessary permissions. You'll use this token to authenticate GitHub Actions with your repository.
GitHub Secrets:

Store sensitive information such as AWS credentials and the GitHub PAT as secrets in your GitHub repository. Define these secrets in the repository settings so that they can be used securely in your GitHub Actions workflow.



 ##Build and Push Docker Image to AWS ECR Using GitHub Actions

1. As Partof first Stpe Have Intitialized the Git repository With sample Hellow-Workld applocation using JAVA

2. also have written Dockerfile which build a docker image for my hello-world application and made sure that the docker image is Optimzed for the size.

3. as per the next step have created the AWs ECR respository which will store my docker Image, and craeted IAM users with "**AmazonEC2-CnotainerRegistryFUllAcess**"

4. then Devloped Github-actions Workflow wchi will tirggers on Push or Pull Events, have also Included stpes to build the docker image and Push It to ECR

5. As part of Security and best practices have stored the sensitive information as secrets , and maintained the security by keeping the docker image size every minimal.

6. 
