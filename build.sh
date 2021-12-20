#!/bin/bash

bundle exec asciidoctor -D out index.adoc
cp img out
