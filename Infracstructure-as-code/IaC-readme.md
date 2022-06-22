# Infrustructure as Code (IaC)

## What is IaC?
IaC is an I.T practice that codifies and manages underlying I.T infrasture as software rather than
through physical hardware components

IaC Enables developers or operations teams to automatically 

- Manage
- Monitor
- Provision resources

The code is easy to edit, copy and distribute 

## What are the Benifits of using IaC?

- Speed
- Efficiency
- Consistency
- Alignment with DevOps

## What are the disadvantages

- Requires additional tools (Which could cause errors)
- Introduces the chance of configuration drift
- Places more responsibility on developers

## Approuchs
- Declarative programming 
Which outlines the desired intended state of the infrastructure, 
but not the steps to reach that state.

- Imperative programming
Which defines commands for the infrastructure to reach desired state

## What tool are available?

- AWS cloudFormation
- Read Hat Ansible
- Chef
- Puppet

## What is configured management and orchestration under IaC?

- Configuration management
Configuration management is a process for maintaining computer systems, servers, and software in a desired, consistent state.
 It’s a way to make sure that a system performs as it’s expected to as changes are made over time. 

Managing IT system configurations involves defining a system's desired state—like server configuration—then building and maintaining those systems. 
Closely related to configuration assessments and drift analyses, configuration management uses both to identify systems to update, reconfigure, or patch.

- Orchestration
Container orchestration automates the deployment, management, scaling, and networking of containers. 
Enterprises that need to deploy and manage hundreds or thousands of Linux® containers and hosts can benefit from container orchestration. 

Container orchestration can be used in any environment where you use containers. It can help you to deploy the same application across different environments without needing to redesign it. And microservices in containers make it easier to orchestrate services, including storage, networking, and security. 

Containers give your microservice-based apps an ideal application deployment unit and self-contained execution environment. They make it possible to run multiple parts of an app independently in microservices, on the same hardware, with much greater control over individual pieces and life cycles.

Managing the lifecycle of containers with orchestration also supports DevOps teams who integrate it into CI/CD workflows. Along with application programming interfaces (APIs) and DevOps teams, containerized microservices are the foundation for cloud-native applications.

## What is Ansible's key benefits?
- EFFICIENT ARCHITECTURE

- SSH KEYS ARE YOUR FRIENDS

- MANAGE YOUR INVENTORY IN SIMPLE TEXT FILES

- PLAYBOOKS: A SIMPLE+POWERFUL AUTOMATION LANGUAGE

- EXTEND ANSIBLE: MODULES, PLUGINS and API

## How does IaC - Ansible - Terraform fit into DevOps?

- Ansible
Ansible is an open-source tool for deployment automation, configuration management, and orchestration. In this case, we use Ansible for automating,
installing, and configuring an AWS server instance with Jenkins.

- Terraform
Terraform is an open-source tool that allows building IaC in a cloud-platform agnostic way. 
Terraform IaC is written as a JSON-like declarative configuration file that can be version controlled, tested,
and executed repeatedly to stand up the infrastructure on multiple deployment tiers or to rebuild the infrastructure from scratch when needed.

## How does IaC benefit the business? 

IaC delivers an integrated, end-to-end security solution to help organizations better protect their cloud environments. It provides a complete picture of cyber risks across the modern attack surface, with unified visibility into code, configurations, assets and workloads. Learn more about Tenable.cs and how our platform enables DevSecOps with integrated controls for development and runtime workflows, focused on IaC.