
# What is CI, CD and CDE
---
### Continuous Integration (CI)
--- 
Developers merge/commit code to master branch multiple times a day, fully automated build and test process which gives feedback within few minutes, by doing so, you avoid the integration hell that usually happens when people wait for release day to merge their changes into the release branch.


### Continuous Delivery ( CD )
---
Continuous Delivery is an extension of continuous integration to make sure that you can release new changes to your customers quickly in a sustainable way. This means that on top of having automated your testing, you also have automated your release process and you can deploy your application at any point of time by clicking on a button. In continuous Delivery the deployment is completed manually.

![continuous Delivery](./CICD%20-%20images/CICD-pipeline)

### Continuous Deployment
---
Continuous Deployment goes one step further than continuous delivery, with this practice, every change that passes all stages of your production pipeline is released to your customers, there is no human intervention, and only a failed test will prevent a new change to be deployed to production.

![Continuous Deployment](./CICD%20-%20images/Continuous-Deployment.jpg)

## What is the differences between CD and CDE use cases?
---
Continuous Deployment is more advanced than Continuous Delivery, because it automatically deploys the product unless a test fails. Where as Continuous Delivery requires a user to press "OK" to deploy it.

![differances in CD & CDE](./CICD%20-%20images/CD-vs-CDE.jgp)

## What is Jenkins?
---
Jenkins is a software that allows continuous integration. Jenkins will be installed on a server where the central build will take place. The following flowchart demonstrates a very simple workflow of how Jenkins works. Along with Jenkins, sometimes, one might also see the association of Hudson.

![Jenkins pipeline](./CICD%20-%20images/Jenkins-pipeline.jpg)

## What are the benefits of CICD pipeline
---
What is a CI CD Pipeline: The CI/CD pipeline is all about automation: Initiating code builds, automated testing, and automated deploying to the staging or production environments. It’s complex and exciting at the same time, but incredibly fast, if the output of any stage fails, the next stage will also fail.


## What are the other tools available for CICD pipeline
---
![other tools](./CICD%20-%20images/other-tools-for-CICD-pipeline.jpg)

## Why Jenkins
---
Why Jenkins? Multi Billion Dollar companies like Facebook, Netflix and Ebay have adopted Jenkins because of it’s amazing advantages, Jenkins is an open-source automation server in which the central build and CI process take place, It is a Java-based program with packages for Windows, macOS, & Linux.


### Docker
---
![What is Docker](./CICD%20-%20images/What%20is%20docker.jpg)

Docker is the one of the best virtualization platform to containerise your app, popularity and adoption of Docker is rapidly growing due to its incredible benefits! Top companies like ING, Paypal, ADP, and Spotify keep using Docker. Continuous Integration Efficiency with Docker enables you to build a container image and use that same image across every step of the deployment process. A huge benefit of this is the ability to separate non-dependent steps and run them in parallel, running applications in containers instead of virtual machines is gaining momentum in the IT industry.

Docker does really make it easier to create, deploy, and run applications by using containers, and containers allow a developer to package up an application with all of the parts it needs, such as libraries and dependencies, ship it all out as one package


## Before starting Pipeline
---

### Consider Cost benefits analysis

- Will the project be repeated and how often?
five times a day or Once a year?

- Project size?


## Data breaches
---

Most data breach happen between localhost and github while ssh from localhost

![data breach](./CICD%20-%20images/data-breach.jpg)

## Planning
---

![planning diagram](./CICD%20-%20images/pipe-line-planning-diagram.jpg)

- Generate SSH key on localhost in .SSH/
- coyp 114.pem key to our Github
- Test the ssh connection 

## Actions
---
1. go to ./ssh folder
2. Type command `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"` 
3. Enter a name for file
4. Press enter Twice
5. Then enter `cat ./[filename].pub`
6. copy all the key
7. go to https://github.com/LeeHall-DevOps/eng114_devops
8. Press profile picture in top-right corner as shown

![profile picture](./CICD%20-%20images/Instruction-8-profile.jpg)

9. Select "settings" as shown

![Select settings](./CICD%20-%20images/Step-9-settings.jpg)

10. Select "SSH and GPG Keys" as shown below

![select SSH](./CICD%20-%20images/step-10-ssh-and-gpg-keys.jpg)

11. Select new ssh

![new ssh](./CICD%20-%20images/step-11-new-ssh.jpg)




## What is webhook?
Webhooks allow interaction between web-based applications through the use of custom callbacks. The use of webhooks allows web applications to automatically communicate with other web-apps. Unlike traditional systems where one system (subject) keeps polling another system (observer) for some data, Webhooks allow the observer to push data into the subject’s system automatically whenever some event occurs. 

This eliminates the need for constant checking to be done by the subject. Webhooks operate entirely over the internet and hence, all communication between systems must be in the form of HTTP messages.

resource: https://docs.github.com/en/github-ae@latest/developers/webhooks-and-events/webhooks/creating-webhooks
test


Step 1. go to Jenkins account: http://3.10.171.242:8080/job/lee-CI/GitHubPollLog/

![Jenkins step 1](./Jenkins%20images/Jenkins-Step-1.jpg)

Step 2. copy and paste URL 

![jenkins-url](./Jenkins%20images/jenkins-step-2.jpg)

Step 3. In githubs settings, select webhooks then paste the Jenkins URL into Payload URL. add webhook to URL, check the "JUST THE PUSH EVENT" radio button and check the "ACTIVE" CHECKBOX then Press Add webhook

![payload url](./Jenkins%20images/Jenkins%20payload%20url.jpg)

Step 4. Return to your Jenkins server, Press New Item

![New Item](./Jenkins%20images/Jenkins-new-items.jpg)

Step 5. Give you Item a name, Select "Freestyle project", Press OK

![naming item](./Jenkins%20images/New-Item-name.jpg)

Step 6. 
- Give a relevent "Description"
- Tick "GITHUB PROJECT"

- Input "GitHub URL"

![github project](./Jenkins%20images/github-project-url.jpg)


- In "OFFICE 365 CONNECTOR"

![Office-365-connector](./Jenkins%20images/set-up-Office-365-connector.jpg)

- In "Source Code Management"

![Source-code-management](./Jenkins%20images/set-up-Source-Code-Management.jpg)

- In "Build Triggers"

![Build trigger](./Jenkins%20images/set-up-Build-triggers.jpg)

- In "Build Environment"

![Build Environment](./Jenkins%20images/set-up-build-Environment.jpg)

- In "Build"

![Build](./Jenkins%20images/set-up-build.jpg)

- In "Post-Build Actions"

![Post-Build Actions](./Jenkins%20images/set-up-post-build-actions.jpg)

- Press "save"

