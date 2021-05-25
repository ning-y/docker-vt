# docker-vt

A lightweight alpine-based image for the [variant discovery tool Vt](https://genome.sph.umich.edu/wiki/Vt).

These images are built from the GitHub source on the date indicated on the tag name.
For more information, please see [the Docker Hub page](https://hub.docker.com/r/docker/ningyuan/vt).

## Development

Some notes for myself:

- Build this image by passing the Dockerfile through `STDIN`: `docker build -t ningyuan/vt:2021-05-25 - < Dockerfile`.
  This way, there will be no build context (which is a good thing).
- Tag and release this GitHub repository with each new Docker tag.
  This is just good practice.