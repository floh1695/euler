#!/bin/sh

stack build
stack exec euler-exe | tee report.md
