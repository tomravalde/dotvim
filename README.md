# README

This repository contains all the plugins and my `.vimrc` in my `~/.vim` directory.

## .vimrc

"The vimrc file contains optional runtime configuration settings to initialize Vim when it starts." (From the [Vim Tips Wiki](http://vim.wikia.com/wiki/Open_vimrc_file).) 

For example, to make it easier to switch from insert mode to normal (command) mode, I've added a line of code which allows me to tap `jj` (rather than `<Esc>`):

```
imap jj <Esc>
```

Another useful modification is to make entering command-line mode easier by mapping the semicolon to the colon:

```
nnoremap ; :
```

You can browse the `.vimrc` to see all the other customisations I use. A search through Google and GitHub will throw up lots of vimrc files, to inspire your own.

### Set up

Vim expects to find the `.vimrc` file in the location `~/.vimrc`. So that I can keep the file under version control (and on GitHub), manage it in the `~/.vim` directory, and create a symlink to it:

```
ln -s ~/.vim/vimrc .vimrc
```

## Plugins

Plugins are managed using Tim Pope's [vim-pathogen](https://github.com/tpope/vim-pathogen). This means all new packages can be installed in `~/.vim/bundle` and they will be added to the `runtimepath`.

Some useful plugins I use include:

* **vim-markdown:** for markdown syntax highlighting
* **calendar-vim:** for a calendar that can be navigated and annotated in the Vim environment.

A Google search will show up a wide variety of plugins for all sorts of purposes. Even a plugin to [replicate Emacs' org-mode](https://github.com/jceb/vim-orgmode)!
