#!/bin/bash

count=$(cat users.json | jq '. | length')

for((i = 0; i < $count; i++)); do
    curl -L \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer ${{secrets.TOKEN_GITHUB}}" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    https://api.github.com/repos/daily-problem-solving/252/commits
done