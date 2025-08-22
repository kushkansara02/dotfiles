# unstow, then stow
all:
	stow --verbose --target=$$HOME --restow */

# unstow
delete:
	stow --verbose --target=$$HOME --delete */

# adopts home directory dotfiles to version-controlled configuration
adopt:
	stow --adopt --target=$$HOME */

# overwrites home directory with version-controlled configuration
overwrite:
	stow --adopt --target=$$HOME */
	git restore .

stow_work:
	stow --verbose --target=$$HOME --restow nvim/ karabiner/ wezterm/ tmux/
