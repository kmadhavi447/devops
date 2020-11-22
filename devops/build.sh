# Building backend image
docker build -f Dockerfile.backend -t  backend .
# Building frontend image
docker build -f Dockerfile.frontend -t frontend .