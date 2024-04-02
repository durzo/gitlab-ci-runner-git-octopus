# Old alpine image. no longer used.

docker build --pull --no-cache -t durzo/gitlab-ci-runner-git-octopus:2.5 -t durzo/gitlab-ci-runner-git-octopus:latest -f Dockerfile .

docker push durzo/gitlab-ci-runner-git-octopus:2.5 durzo/gitlab-ci-runner-git-octopus:latest

# Newer ubuntu 22.04 images with dual php version support.

docker build -t durzo/gitlab-ci-runner-git-octopus:22.04 -f Dockerfile_Ubuntu --no-cache .

docker push durzo/gitlab-ci-runner-git-octopus:22.04 durzo/gitlab-ci-runner-git-octopus:latest
