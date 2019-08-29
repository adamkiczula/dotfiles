This is my shell configuration.

### Setting Up

To get set up, symlink the configuration files in this repository to their usual locations:

```sh
ln -s ~/.dotfiles/bash ~/.bash
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/bin ~/.bin
ln -s ~/.dotfiles/gemrc ~/.gemrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/gvimrc ~/.gvimrc
ln -s ~/.dotfiles/tmux ~/.tmux
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
```

Install [reattach-to-user-namespace](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard) so
that tmux is useful:

```sh
brew install reattach-to-user-namespace
```

Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) and Vim plugins by updating
Git submodules:

```sh
git submodule update --init
```

After opening tmux for the first time, type `prefix` + <kbd>I</kbd> to
[initialize Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).

#### PostgreSQL

If [Postgres.app](https://postgresapp.com) is installed, you may add one of its versions' binaries
to `$PATH` by creating the file `~/.pg-version` with your desired version:

```sh
$ ls /Applications/Postgres.app/Contents/Versions/
10/     11/     12/     latest@
$ echo 10 > ~/.pg-version
$ source ~/.bashrc
$ which psql
/Applications/Postgres.app/Contents/Versions/10/bin/psql
```

### Resources

Many tricks and much inspiration come from [Josh Peek](https://github.com/josh/dotfiles)
and [Ryan Bates](https://github.com/ryanb/dotfiles).

