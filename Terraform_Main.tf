terraform {
  cloud {
    organization = "kiwie"

    workspaces {
      name = "Project2-VisualizeData_AmazonQuickSight"
    }
  }
}