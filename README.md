# Pet-HMR website

This repository contains the Pet-HMR webpage.

## Development and usage

Use a container to host Ruby modules that are needed to run the Jekyll build process.
You must build the container on your machine. This way, the user inside the container will have
your user's uid and gid and will not add "foreign" files to your home dir, when mounting the host's 
project folder into the container.

```
# Currently the scripts only support linux

# Build
./build_docker.sh

# Run
./start_docker.sh

# Building for prod
./generate.sh

# Running locally for testing (will automatically do a prod build and 
# host with pyhton's internal web server)
./serve.sh

# Publishing to github:
# 1) Commit all your changes to the master branch (do not commit / push the _site folder)
#       Or create a PR
# 2) Checkout gh-pages-local
# 3) pull remote changes
# 4) merge the (local) master 
# 5) build the site
# 6) commit and push (including the _site folder) 
# 7) Push the _site folder to the gh-pages branch with

git subtree push --prefix _site origin gh-pages

```

For rebuilding stop the web server and run serve.sh again. (We could also use jekyll serve, it would watch for changes)
