#!/usr/bin/env bash

if [ ! -d ".git/hooks" ]; then
  mkdir .git/hooks
  touch ".git/hooks/pre-commit"
  chmod +x .git/hooks/pre-commit
else
    if [ ! -f ".git/hooks/pre-commit" ]; then
      touch ".git/hooks/pre-commit"
      chmod +x .git/hooks/pre-commit
    fi
fi

printf "#!/bin/sh\n\n SCRIPT_DIR=\$(dirname \$0)\n SCRIPT_ABS_PATH=\`cd \$SCRIPT_DIR; pwd\`\n \$SCRIPT_ABS_PATH/../../config/hooks/pre-commit.sh \$0" > .git/hooks/pre-commit