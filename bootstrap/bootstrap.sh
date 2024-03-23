#!/usr/bin/env bash

phases=(
        "pre"
        "setup"
        "post"
)

current_dir="$(pwd)"

# Iterate over the relative paths
for path in "${phases[@]}"; do
        abs_path="$current_dir/$path"
        if [ -d "$abs_path" ]; then
                echo "Checking scripts in $abs_path"
                cd "$abs_path" || exit 1

                for script in *.sh; do
                        if [ -x "$script" ]; then
                                echo "Running $script"
                                ./"$script"
                        else
                                echo "Skipping $script: Not executable"
                        fi
                done
                cd - >/dev/null || exit 1
        else
                echo "Directory $abs_path not found"
        fi
done
