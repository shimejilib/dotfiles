#!/bin/bash
set -e

pip install powerline-status
sitepack="$(python -c "import site; print (site.getsitepackages()[0])")"
powerpath=$sitepack"/powerline/bindings/tmux/powerline.conf"
echo source $powerpath >~/.tmux.conf
cat ./tmux.conf.base >> ~/.tmux.conf
