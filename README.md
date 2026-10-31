# docker-base

> **Deprecated and unmaintained.** CoMSES images no longer use a shared base
> image. `comses.net` builds directly from `ubuntu:24.04`, creates its own
> `comses` user (UID 2718) and runs web, Huey and cron as separate Compose
> services; `comses/docker-ant` is likewise self-contained. There will be no new
> releases and no further security rebuilds.

The existing `comses/base` tags on Docker Hub (`noble`, `jammy`, `latest`, ...)
are left in place so existing pulls keep working, but they are unsupported and
will not receive updates. Do not start new images from them.

## Migrating

- Start from `ubuntu:24.04` (or the runtime image you actually need).
- Create the user in your own Dockerfile: `useradd -m --uid 2718 comses`. The
  old image did this for you with `ONBUILD`.
- Phusion's runit/`my_init`, cron, syslog-ng and sshd are not provided. Run one
  foreground process per container and let Docker Compose handle restarts,
  ordering and logs. Run scheduled jobs in their own container, and use
  Compose `init: true` (or `docker run --init`) to reap child processes.
- Install `build-essential`, `pipx` and similar tooling yourself, in a builder
  stage only.

## History

The image extended https://github.com/phusion/baseimage-docker for runit
support, and installed basic NLTK data in older releases.

