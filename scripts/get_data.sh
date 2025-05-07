#!/usr/bin/env bash

echo "🚀 Pulling data..."

# Define parallel arrays for paths and their corresponding remotes
file_paths=()
remotes=()

# Warn if array is empty
[ ${#file_paths[@]} -eq 0 ] && echo "⚠️ Warning: No file paths specified. Please check if this is intended." >&2
[ ${#remotes[@]} -eq 0 ] && echo "⚠️ Warning: No remotes configured. Please check if this is intended." >&2

# Loop through each file and remote using indexed arrays
for i in "${!file_paths[@]}"; do
    file_path="${file_paths[$i]}"
    remote="${remotes[$i]}"
    echo "💪 Pulling $file_path from remote $remote..."
    dvc pull "$file_path" --remote "$remote"
done

echo "✅ All files pulled successfully."
