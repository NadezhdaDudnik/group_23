#!/bin/bash
cd terminal2
mkdir x y z
cd x
touch 1.txt 2.txt 6.txt 11.json 13.json
mkdir a b c
ls -la
cd ..
mv ./terminal2/{6.txt,11.json} ./terminal3/
