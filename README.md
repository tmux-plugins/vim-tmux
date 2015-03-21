# tmux.vim

Vim plugin for `.tmux.conf`.

### Features

When you edit `.tmux.conf` you get:

* proper syntax highlighting
* `commentstring` - so that plugins like
  [vim-commentary](https://github.com/tpope/vim-commentary) work as intended
* `K` - jumps to the \*exact* place in `man tmux` where the word under cursor is
  explained (a helluva time saver). This should work correctly on practically
  anything in `.tmux.conf`.
* [:make](http://vimdoc.sourceforge.net/htmldoc/quickfix.html#:make) - invokes
  tmux source `.tmux.conf` and places all the errors (if any) in quicklist
* `g!` - executes lines as tmux commands. Works on visual selection or as a
  motion. `g!!` executes just the current line.

### Installation

* Vundle<br/>
`Plugin 'tmux-plugins/vim-tmux'`

* Pathogen<br/>
`git clone git://github.com/tmux-plugins/vim-tmux.git ~/.vim/bundle/vim-tmux`

### Credits

* Tiago Cunha - created first syntax highlighting script for `.tmux.conf`
* [Zaiste](https://github.com/zaiste) - wrapped syntax highlighting script in
  vim plugin

### License

All the contributions made after forking from
[Zaiste](https://github.com/zaiste) are under MIT license.
