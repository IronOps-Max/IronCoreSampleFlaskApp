## Flask Hello World — AWS CI/CD example (GitHub → CodePipeline → CodeBuild → CodeDeploy → EC2)

## What is included
- Flask app (`app.py`)
- Real `pytest` that uses Flask test client (`tests/test_app.py`)
- `buildspec.yml` for CodeBuild: installs deps, runs tests, packages artifact
- `appspec.yml` + `scripts/` for CodeDeploy to deploy to EC2
- Use an existing S3 bucket (KMS encrypted) as CodePipeline artifact store and GitHub as source.

## Quick local test
1. Create a virtual env and install deps:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt

   ## cicd 

   gitub : dev - stg - prod 

   aws : dev -stg - prod         (stack used : ec2-s3) + codeDepply

   now i send pr to dev  :
   trigger codePipeline in dev environment : build test send artifact to s3 then trigger pr to stg , stg will also build test and deploy to stg env , same for prod 

   ## test
