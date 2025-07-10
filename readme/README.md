# ProvisioningEC2VM
This is a Secure-by-Default Terraform project that provisions a minimal and hardened AWS EC2 instance setup. It includes:

A virtual machine (EC2) in a public subnet

SSH access restricted by a security group and key pair

Optional tagging for environment management

GuardDuty integration for threat detection

Outputs the public IP for easy connection

Ideal for learning Terraform basics or bootstrapping a secure cloud environment with infrastructure as code.

                    ┌────────────────────────────┐
                    │         AWS Cloud          │
                    └────────────────────────────┘
                               │
                               ▼
                    ┌────────────────────────────┐
                    │        VPC (existing)       │
                    │  CIDR: e.g., 10.0.0.0/16     │
                    └────────────────────────────┘
                               │
                               ▼
                    ┌────────────────────────────┐
                    │     Public Subnet           │
                    │  CIDR: e.g., 10.0.1.0/24     │
                    └────────────────────────────┘
                               │
                               ▼
                    ┌────────────────────────────┐
                    │      EC2 Instance           │
                    │  Name: SecureWebInstance    │
                    │  AMI: ${ami_id}             │
                    │  Type: ${instance_type}     │
                    │  Public IP: Output          │
                    └────────────────────────────┘
                               │
                               ▼
                    ┌────────────────────────────┐
                    │   Security Group            │
                    │  - Allow SSH (port 22)      │
                    │  - Optional: HTTP/HTTPS     │
                    └────────────────────────────┘
                               │
                               ▼
                    ┌────────────────────────────┐
                    │       Key Pair              │
                    │  Used for SSH Access        │
                    └────────────────────────────┘
