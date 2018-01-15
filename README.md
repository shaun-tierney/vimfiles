# Shaun's vim files

This is the latest copy of my personal vim configuration.

## Installation Instructions

### Mac/Linux

1. Clone this repository to `~/.vim`.
2. Update and initialize the submodules.
3. Then add a symlink called `~/.vimrc` that points to `~/.vim/vimrc`.

### Windows

1. Clone this repository to `$HOME/.vim`.
2. `cd %USERPROFILE%`
3. `mklink /H _vimrc vimfiles\vimrc`
4. `mklink /H _gvimrc vimfiles\gvimrc`

If `mklink` will not work (Windows XP and lower), simply copy the included
vimrc and gvim rc files.  But be careful!  Changes made to the `_vimrc` and
`_gvimrc` files will not be propagated back to your repository, you will need
to change them manually.

