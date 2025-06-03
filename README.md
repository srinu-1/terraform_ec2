# Terraform AWS EC2 Example

This project provisions two AWS EC2 instances using Terraform.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.2.0
- AWS account and credentials configured (e.g., via `aws configure` or profile)

## Files

- `main.tf`: Main Terraform configuration for AWS provider and EC2 instances.
- `backend.tf` (optional): Configure remote state backend (e.g., S3).

## Usage

1. **Initialize Terraform:**
   ```sh
   terraform init
   ```

2. **Review the execution plan:**
   ```sh
   terraform plan
   ```

3. **Apply the configuration:**
   ```sh
   terraform apply
   ```

4. **Destroy resources (if needed):**
   ```sh
   terraform destroy
   ```

## Notes

- The EC2 instances use the AMI ID `ami-02457590d33d576c3` in the `us-east-1` region. Update the AMI as needed.
- The `lifecycle` block with `prevent_destroy` is commented out. Uncomment to prevent accidental deletion.
- Each instance is tagged with a unique name: `test-spot-1`, `test-spot-2`, etc.

## License

MIT