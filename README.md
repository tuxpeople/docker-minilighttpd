# minilighttpd
![Github Workflow Badge](https://github.com/tuxpeople/docker-minilighttpd/actions/workflows/release.yml/badge.svg)
![Github Last Commit Badge](https://img.shields.io/github/last-commit/tuxpeople/docker-minilighttpd)
![Docker Pull Badge](https://img.shields.io/docker/pulls/tdeutsch/minilighttpd)
![Docker Stars Badge](https://img.shields.io/docker/stars/tdeutsch/minilighttpd)
![Docker Size Badge](https://img.shields.io/docker/image-size/tdeutsch/minilighttpd)

    Caution: No more quay.io!
## Quick reference

Just a small little lighthttp pod for my internal use. 

* **Code repository:**
  https://github.com/tuxpeople/docker-minilighttpd
* **Where to file issues:**
  https://github.com/tuxpeople/docker-minilighttpd/issues
* **Supported architectures:**
  ```amd64```, ```armv7```, ```armv6``` and ```arm64```

## Image tags
- ```latest``` always refers to the latest tagged release.
- There are tags for major, minor and patchreleases (eg. ```1.0.0```, ```1.0```, ```1``` )
- ```nightly``` gets automatically built a daily cron job
- ```devel``` gets automatically built on every push and represents the latest version of the repo

## Usage

```sh
docker pull tdeutsch/debugcontainer:<tag>
```

or

```sh
docker pull ghcr.io/tuxpeople/debugcontainer:<tag>
```