resource "aws_ecrpublic_repository" "avanti-masterclass-app" {
  repository_name = "avanti-masterclass-app"
}

# resource "aws_ecr_lifecycle_policy" "avanti-masterclass-app-policy" {
#   repository = aws_ecr_repository.avanti-masterclass-app.name

#   policy = <<EOF
# {
#     "rules": [
#         {
#             "rulePriority": 1,
#             "description": "Keep last 3 images",
#             "selection": {
#                 "tagStatus": "tagged",
#                 "tagPrefixList": ["v"],
#                 "countType": "imageCountMoreThan",
#                 "countNumber": 3
#             },
#             "action": {
#                 "type": "expire"
#             }
#         }
#     ]
# }
# EOF
# }
