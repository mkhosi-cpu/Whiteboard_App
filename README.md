Project Scenario

A sudden shift to remote work globally has created an opportunity to provide better remote collaboration tooling.
You've identified an opportunity to create a simple yet powerful collaborative whiteboard and you've partnered with a 
friend who has created the first version. Your job is to get it out into the world and make sure it's ready to handle a 
potential surge of users who are desperate for a better solution to this problem.

After some consideration, you've decided on using the following products:

- EKS (AWS )for hosting the application
- AWS products for supportive services (e.g. Load Balancing, DNS, etc.)
- Terraform for creating the infrastructure

Your friend is rapidly iterating on the software and so it was decided that there should be both a **test** and 
a **production** environment (these environments can be identical in implementation). For now, the application deployed 
to both environments will be the same: [WBO Docker Image](https://hub.docker.com/r/lovasoa/wbo) using the 
`v1.17.0` tag.

There are many other teams around the world looking to solve the same problem and so the time to get this up and 
running is limited. It is expected that it should take no longer than **a few hours** get everything up and 
running but you have a week to complete it.

As a stretch goal, you'd also like to ensure that access to the whiteboard application is secured via TLS.


Prerequisites:

1. AWS Account: Ensure you have access to an AWS account.
2. AWS CLI: Installed and configured with proper credentials.
3. kubectl: Installed and configured to work with EKS.
4. Terraform: Installed for infrastructure provisioning.
5. Docker: Installed, though you're using a pre-built Docker image.

Step-by-Step Process:

Step 1: Set up Terraform Configuration
- Create a directory for your Terraform files:
- Write the Terraform configuration for the EKS cluster:
- Initialize Terraform:
- Apply the configuration:

Step 2: Configure Kubernetes (kubectl)
- Configure kubectl to connect to your EKS cluster:
- Test the connection:

Step 3: Deploy the WBO Application
- Create a Kubernetes Deployment and Service for the whiteboard app
- Deploy the app:
- Check the service to get the Load Balancer DNS:

Step 4: Set Up DNS with Route 53
- Create a Route 53 Hosted Zone: You can set up a custom domain for your application using Route 53.
- Create a DNS record for your application: Point a subdomain (like test.yourdomain.com and prod.yourdomain.com) to the Load Balancer DNS of the respective environments.

Step 5: Automating Deployments with Terraform (Optional)
You can integrate your Kubernetes deployment with Terraform for a more automated infrastructure + app deployment setup

Step 6: Testing and Production Environment Setup
- Create a separate EKS cluster for testing or use namespaces in the same cluster.
- Deploy the app to the test environment and run load tests to ensure performance and scalability.
- After validation, you can deploy to the production environment.

Step 7: Monitoring and Scaling
- Set up CloudWatch for monitoring your EKS cluster and application.
- Enable Auto-scaling in the EKS cluster by configuring the appropriate Kubernetes Horizontal Pod Autoscaler (HPA) or AWS Auto Scaling Groups.

This setup ensures that your whiteboard application is hosted in a robust, scalable, and production-ready environment, with identical test and production setups for continuous deployment.

