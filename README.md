# circleci-golang

Repository provides build scripts for Docker image, that can be used as
build base image in the CircleCI.

Images includes:

* go 1.17
* ca-certificates
* git
* openssl
* bash
* docker
* openssh-client
* make
* curl


## Usage

To use in the CircleCI, use following configuration inside `.circle/config.yml`:

```yaml
version: 2
jobs:
  "build & deploy":
    docker:
      - image: magalixcorp/circleci-golang-lite
```

## Building Image

To build and push file simply run following command:

```
make image push@magalixcorp
```

It will automatically build image and push it into Docker Hub under `magalixcorp` org.

