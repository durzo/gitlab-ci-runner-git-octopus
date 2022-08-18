docker build --pull --no-cache -t durzo/gitlab-ci-runner-git-octopus:2.2 -f Dockerfile .

docker push durzo/gitlab-ci-runner-git-octopus:2.2
