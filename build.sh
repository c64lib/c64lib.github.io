#!/bin/bash

bundle exec asciidoctor -D out -r asciidoctor-diagram -r asciidoctor-kroki index.adoc
