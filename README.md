##  Terraform AWS Infrastructure Deployment

Modular VPC with Subnets & Security Groups

## What This Does

This Terraform code sets up basic AWS networking:

- VPC (Virtual Private Cloud)

- Public Subnets (for web servers)

- Private Subnets (for databases)

- Security Groups (firewall rules)

## Why I Built It

I got tired of manually creating these in the AWS Console. 

## Key Features

- Reusable modules – Easy to copy for new projects

- Customizable – Change IP ranges via variables

- Safe defaults – Only allows SSH from my IP

## How It Works

- VPC Module: Creates the main network

- Subnets Module: Adds public/private subnets

- Security Group Module: Controls access

 ## Try It Yourself

- Clone the repo

- Add your AWS credentials

- Run terraform apply

## Challenges I Faced (and How I Solved Them)

1. Module Dependencies Headache

- Problem: Subnets wouldn't create because they needed the VPC ID first.

- Solution: Learned to use Terraform outputs to pass the VPC ID to other modules.

2. Security Group Mistakes

- Problem: First version allowed SSH access from anywhere (0.0.0.0/0) - unsafe!

- Solution: Locked it down to only allow my IP address.

3. Dynamic Subnet Creation

- Problem: Hardcoded subnet IPs made the code inflexible.

- Solution: Used variables and count to create subnets dynamically.

## What I Learned

- Terraform basics - How to write, plan and apply infrastructure code

- AWS networking - VPCs, subnets, and security groups

- Best practices - Using modules, variables, and secure defaults

- Debugging - Reading error messages and fixing dependencies

## Looking For Work!
I'm seeking junior DevOps/Cloud roles.

## Contact me: 

Email: donaemeka92@gmail.com

Linkedin: linkedin.com/in/donatus-devops
