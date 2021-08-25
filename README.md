# Pet-HMR website

This repository contains the Pet-HMR webpage.

## Development and usage

Use a container to host Ruby modules that are needed to run the Jekyll build process.

```
docker build -f _Dockerfile -t pethmr-web .
docker run -it -v $PWD:/website-pethmr pethmr-web /bin/bash
```

In the container for rebuilding run:
```
bundle exec jekyll clean && bundle exec jekyll build
```

Use the Python internal web server to host the page for testing purposes

```
cd _ site; python3 -m http.server
```

## Deployment
