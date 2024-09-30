#!/usr/bin/env bash

#
# Print parts of my typical (highly opinionated) `.gitignore`.
#

cat <<EOT
# Old etc.
*.old*
*.orig
/*.patch
*.ref*

# Variable data.
/var/

# Intermediate vendor solutions.
/vendor/

# Shared VS Code settings.
/.vscode/*
!/.vscode/*.json

# Custom VS Code settings.
/*.code-workspace
EOT
