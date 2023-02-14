all:
	stow --verbose --target=$$HOME --restow */

delete:
	stow --verbose --target=$$HOME --delete */

overwrite:
	stow --adopt --target=$$HOME */
	git restore .
