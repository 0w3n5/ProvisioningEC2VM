
Here’s a simple **How To Use** section you can include in your README.md:

---

## 🚀 How To Use

### Prerequisites

* [Terraform](https://www.terraform.io/downloads.html) installed (v1.5.0 or higher recommended)
* AWS CLI configured with credentials and default profile or specify profile in `variables.tf`
* An existing VPC and subnet where you want to deploy the instance
* An AWS key pair for SSH access

### Steps

1. **Clone this repository**

   ```bash
   git clone https://github.com/yourusername/your-repo.git
   cd your-repo
   ```

2. **Customize `terraform.tfvars`**

   Edit `terraform.tfvars` to set values for:

   * `ami_id` — The Amazon Machine Image ID for your EC2 instance
   * `instance_type` — Instance size (e.g., t3.micro)
   * `key_name` — Name of your AWS SSH key pair
   * `subnet_id` — Target subnet ID
   * `security_group_id` — Security group allowing SSH
   * `environment` — Deployment environment tag

3. **Initialize Terraform**

   ```bash
   terraform init
   ```

4. **Review the planned changes**

   ```bash
   terraform plan
   ```

5. **Apply the configuration**

   ```bash
   terraform apply
   ```

   Confirm with `yes` when prompted.

6. **Get the EC2 Public IP**

   After deployment, Terraform outputs the instance’s public IP:

   ```
   Outputs:

   instance_public_ip = "X.X.X.X"
   ```

7. **Connect via SSH**

   ```bash
   ssh -i /path/to/your-key.pem ec2-user@X.X.X.X
   ```

8. **Clean up when done**

   ```bash
   terraform destroy
   ```

---

