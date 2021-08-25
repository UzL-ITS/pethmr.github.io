#!/bin/sh
umask 022
bundle exec jekyll clean && bundle exec jekyll build 
