#!/bin/bash

codium --list-extensions > extensions.list
cat extensions.list | xargs -L 1 codium --install-extension
rm extensions.list
