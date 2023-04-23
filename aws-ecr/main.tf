resource "aws_ecr_repository" "bb_template_repository" {
  name = "bb_template_repo"
  image_tag_mutability = "MUTABLE"
}

data "aws_iam_policy_document" "bb_template_repository_policy_document" {
  statement {
    sid = "bb adds full ecr access to the template repository"
    effect = "Allow"
    principals {
      type = "*"
      identifiers = ["*"]
    }
    actions = [
      "ecr:BatchCheckLayerAvailability",
      "ecr:BatchGetImage",
      "ecr:CompleteLayerUpload",
      "ecr:GetDownloadUrlForLayer",
      "ecr:GetLifecyclePolicy",
      "ecr:InitiateLayerUpload",
      "ecr:PutImage",
      "ecr:UploadLayerPart"
    ]
  }
}

resource "aws_ecr_repository_policy" "bb_template_repository_policy" {
  repository = aws_ecr_repository.bb_template_repository.name
  policy = data.aws_iam_policy_document.bb_template_repository_policy_document.json
}
