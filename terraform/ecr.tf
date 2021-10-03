resource "aws_ecr_repository" "ecr_vote" {
  name = "vote-repository"
}

resource "aws_ecr_repository" "ecr_worker" {
  name = "worker-repository"
}

resource "aws_ecr_repository" "ecr_result" {
  name = "result-repository"
}