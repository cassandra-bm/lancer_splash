#!/bin/bash

# Check if the target directory is provided
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/target_directory"
  exit 1
fi

TARGET_DIR=$1

# Check if the target directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: Target directory does not exist."
  exit 1
fi

# Remove all contents of the target directory
rm -rf "${TARGET_DIR:?}/*"

# Copy all contents of the current directory to the target directory
cp -r ./* "$TARGET_DIR"

echo "All files copied to $TARGET_DIR successfully."
