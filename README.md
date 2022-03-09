# Panintelligence container with firebolt driver

Build a Panintelligence marialess container with the firebolt driver embedded

## Building your image

Clone the contents of this project to your local file system.  To build the container, please run:

```bash
docker build -t panintelligence/firebolt:latest
```

## Pushing this image to your private repository

first you will need to log in to your private docker repository

```bash
docker login <<your repository url>>
```

Then you will need to push your new image to your private repository

```bash
docker image push panintelligence/firebolt:latest
```

## Using your new image

Where previously you might have been pulling directly from dockerhub.io/panintelligence for your Pi software, instead you will be pulling from your private repo.  To do this, you will need to change the image.

e.g.

### old:

```yaml
services:
  dashboard:
    image: panintelligence/dashboard-marialess:latest
```

### new:

```
services:
  dashboard:
    image: <<your repository url>>/panintelligence/firebolt:latest
```
