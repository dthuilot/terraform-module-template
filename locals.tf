locals {
  # Get the repository name from the current repository
  repository_name = split("/", data.github_repository.current.full_name)[1]

  # Merge the input tags with the repository tag
  tags = merge(
    var.tags,
    {
      repository = local.repository_name
    }
  )
}

# Data source to get current repository information
data "github_repository" "current" {
  name = split("/", var.repository_name)[1]
} 