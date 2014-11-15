# tmux.vim

Vim filetype plugin for `.tmux.conf`.

### Features

When you edit `.tmux.conf` you get:

* proper syntax highlighting
* `commentstring` - so that plugins like
  [vim-commentary](https://github.com/tpope/vim-commentary) work as intended
* `K` - jump to the \*exact* place in `man tmux` where the word under cursor is
  explained. It's a time saver and intends to works for pretty much everything.
* [:make](http://vimdoc.sourceforge.net/htmldoc/quickfix.html#:make) - invokes
  tmux source `.tmux.conf` and places all the errors (if any) in quicklist

### Installation

* Vundle<br/>
`Plugin 'tmux-plugins/vim-tmux'`

* Pathogen<br/>
`git clone git://github.com/tmux-plugins/vim-tmux.git ~/.vim/bundle/vim-tmux`

### Credits

* Tiago Cunha - author of the first version of
  [tmux.vim](http://tmux.svn.sourceforge.net/viewvc/tmux/trunk/examples/tmux.vim?revision=2783&view=markup)
* [Zaiste](https://github.com/zaiste) - forked the original script from Tiago,
  turned it into proper vim plugin and added improvements.

Thanks to both of them.

Check the [changelog](CHANGELOG.md) for a list of all the improvements in this
fork.

### License

All the contributions made after forking from
[Zaiste](https://github.com/zaiste) are under MIT license.
