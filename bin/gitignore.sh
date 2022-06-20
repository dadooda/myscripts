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

# Intermediate vendor solutions.
/vendor/

# Nonpersistent stuff.
TODO.md

# Shared VS Code settings.
/.vscode/*
!/.vscode/*.json

# Custom VS Code settings.
/*.code-workspace'
EOT
