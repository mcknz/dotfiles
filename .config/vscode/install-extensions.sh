#!/usr/bin/env zsh

while IFS= read -r extension || [[ -n "$extension" ]]; do
    [[ -z "$extension" || "$extension" == \#* ]] && continue
    code --install-extension "$extension"
done < "${0:A:h}/extensions.txt"
