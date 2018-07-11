# ansible-docker
Docker image for ansible

This image based at Ubuntu and contains:
* ansible
* ansible-lint

## Usage

```Bash
$ docker pull kudlayry/ansible
```

## Example of .gitlab-ci.yml

```YAML
image: kudlayry/ansible:latest

stages:
  - test
  - deploy

test:
  stage: test
  script:
    - ansible-lint playbook.yml
    - ansible-playbook --check playbook.yml

deploy:
  stage: deploy
  only:
    - master
  environment:
    name: Dev
  script:
    - ansible-playbook playbook.yml
```
