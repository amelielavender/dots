#!/bin/env bash

dotdir=$HOME/dots

cd $dotdir
stow -vvv $@ 
