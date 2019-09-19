# simple-html-website

## Requirements

Create an html website with a static webpage with 4 features:

1. Infrastructure code
2. CI/CD pipeline
3. Rollback to any version within the last 3 months
4. Support HTTPs

## Design

### Infrastructure

I decided to go with kubernetes as a deployment platform since I know it the best. It has easy version control with docker images and can easily be rolled back. For Ingress controller, I chose Nginx as it the simplest to install. Here are the steps to get the deployment up:

1. Dockerize the html page: 1hr
2. Create helm chart: 2hr
3. Create kubernetes platform including helm and nginx: 1hr. A simple kubernetes cluster takes less than an hour. But deploying HA kubernetes cluster requires days or months.

The code was uploaded here: https://github.com/kadamanas93/gke-drone-setup

### CI/CD

On CI/CD pipeline, I had a choice of going with something familiar like Concourse or something that I had some knowledge of which was Drone CI/CD. Given that I didn't want to deploy Concourse, I went with drone as they have a service here: https://cloud.drone.io/ where I can hook up github repo and easily get builds. Here are the estimates:

1. Setup drone and github: 1hr
2. Create CI/CD file: 4hr

### HTTPS

For HTTPS, I would've installed a cert manager using Let's Encrypt service. Then I would have to update the ingress to use the tls secret. Estimated time: 6-8 hrs since I don't have much experience with it.

## Improvements

- Convert GKE deployment to Terraform for more repeatable and robust IaC
- Improve drone setup scripts for better secret management experience
- Add testing for html webpage
- Add testing after deploying
