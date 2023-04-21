#!/usr/bin/env bash

#
# Print parts of `~/.gitconfig`.
#

cat <<EOT
[user]
  email = fortunadze@gmail.com
  name = Alex Fortuna

[color]
  ui = auto

[color "status"]
  # NOTE: Default Git colors suck.
  added = yellow
  changed = green
  untracked = cyan

[alias]
  br = branch
  ci = commit
  co = checkout
  df = diff
  lg = log -p
  mf = merge --ff-only
  msg = log --abbrev-commit --format=oneline --no-merges -n 15
  st = status
  up = remote update --prune

  # Custom/experimental.
  actlog = log --date=short --format='%h %ad %ae | %s'

[tig]
  # See also: /etc/tigrc.
  line-graphics = utf-8
  vertical-split = no

[tig "color"]
  date = blue black bold

[pager]
  # Pagination settings.
  branch = no
  tag = no
EOT
