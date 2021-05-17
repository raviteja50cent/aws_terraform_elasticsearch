# aws_terraform_elasticsearch
This repo has info on how to create an elasticsearch instance on EC2.

## Instructions:

First of all, everything I did was in ASW Free tier and used Terraform aws resources.
I have followed below approach to create Elasticsearch(ES) node on EC2. As this is the first time working on this tool, I have referred few documents in Medium and Github to clearly understand how to get the ES up.

1. Created EC2 instance using Terraform aws resource "aws_instance" using an access_key and access_id created for user "kubeit".
2. After EC2 is up, I had to choose t2.small for ES and provided public access. Now, I can also create this under VPC, but tried to make it public as this is the initial try.
3. Now, to configure a secure way to connect to ES is using IAM ES roles and allowing access to everyone under access policy.
4. Have spent time during the exercise too debug issues in getting up ES instacne and also had hands on using AWS Elasticsearch service in the AWS Console. Steps involved are connecting to VPV/Public access, if VPC is selected, provide the subnet_id/security_group and select access required to limited people or everyone.

## Q & A
1. What did you choose to automate the provisioning and bootstrapping of the instance? Why?
  > I have chosen Terraform AWS provide as I have worked before in provisioning EC2 instances using terraform using AWS RHEL/Ubuntu AMIs.
2. How did you choose to secure ElasticSearch? Why?
  > Used AWSESAdmin IAM role to secure ElasticSearch accessing using endpoint.
3. How would you monitor this instance? What metrics would you monitor?
  > Will monitor memory, disk usage CPU utilization and statuscheck of the application using CloudWatch.
4. Could you extend your solution to launch a secure cluster of ElasticSearch nodes? What
would need to change to support this use case?
  > Need to enable node-to-node encryption for master and nodes which uses TLS 1.2 protocol. We can also block specific IP addresses that can restrict connecting to the cluster.
5. Could you extend your solution to replace a running ElasticSearch instance with little or no
downtime? How?
  > We can do a rolling upgrade and test node by node. If it's in one node, take snapshot backup of old instance and put it in upgraded version and do reindexing, if all look good with the new version, enable read/write mode to new version and remove the old one.
6. Was it a priority to make your code well structured, extensible, and reusable?
  > Yes, this will help and save time to other developers who can use the same code and develop according to their own use cases.
7. What sacrifices did you make due to time?
  > Spent more on debugging issues rather than actually developing.
