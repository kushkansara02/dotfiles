dirs = config/ editor/ git/ ssh/ terminal/

# unstow, then stow
all:
	stow --verbose --target=$$HOME --restow $(dirs)

# unstow
delete:
	stow --verbose --target=$$HOME --delete $(dirs)

# adopts home directory dotfiles to version-controlled configuration
adopt:
	stow --adopt --target=$$HOME $(dirs)

# overwrites home directory with version-controlled configuration
overwrite:
	stow --adopt --target=$$HOME $(dirs)
	git restore .
