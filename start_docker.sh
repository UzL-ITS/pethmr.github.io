#!/bin/bash

docker run -p 8000:8000 -it -v $(pwd):/home/jekyll/page pethmr-web
