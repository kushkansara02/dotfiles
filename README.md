# Getting started

Firstly, clone this repo under `Projects/`.

Then, create a symlink to the repo using `ln -s ~/Projects/dotfiles ~/dotfiles`.

Next, run `brew.sh` to install necessary dependencies.

To sync the project with the actual home directory, look at the alias `sync` in `.aliases`.

This command only needs to be run once - then, you can use `sync` to sync the files once changes are made.

Recommended: regenerate the old ssh key and clear out `known_hosts`.
