#!/bin/sh
umask 022
bundle exec jekyll clean && JEKYLL_ENV=production bundle exec jekyll build 
