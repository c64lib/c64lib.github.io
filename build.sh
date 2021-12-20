#!/bin/bash

bundle exec asciidoctor -D out index.adoc
cp -r img out
