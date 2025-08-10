# Flask Hello World — AWS CI/CD example (GitHub → CodePipeline → CodeBuild → CodeDeploy → EC2)

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
