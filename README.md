# Terraform Module Template

This is a template repository for creating standardized Terraform modules within our organization.

## Description

This template provides a standardized structure for creating Terraform modules, ensuring consistency and best practices across all infrastructure code.

## Usage

```hcl
module "example" {
  source = "git::https://github.com/your-org/terraform-module-template.git"

  # Add your module variables here
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 4.0.0 |

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| example | Example variable | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| example | Example output |

## GitHub Actions

This template includes GitHub Actions workflows that run on pull requests and pushes to the main branch:

1. **Terraform Workflow** (`terraform.yml`):
   - Runs `terraform fmt` to ensure consistent code formatting
   - Runs `terraform init` to initialize the working directory
   - Runs `terraform validate` to check if the configuration is valid
   - Runs `terraform plan` to show the execution plan
   - Automatically comments the plan on pull requests

2. **Security Scanning** (`tfsec.yml`):
   - Runs tfsec to scan for security issues
   - Uploads results as artifacts

3. **Release Workflow** (`release.yml`):
   - Manually triggered workflow for creating releases
   - Allows selection of source branch (main, develop, staging, production)
   - Creates a GitHub release with version tag
   - Supports custom release notes
   - Outputs the release URL

To create a new release:
1. Go to the "Actions" tab in the repository
2. Select the "Create Release" workflow
3. Click "Run workflow"
4. Fill in the required information:
   - Select the source branch
   - Enter the version number (e.g., 1.0.0)
   - Add release notes
5. Click "Run workflow"

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request 