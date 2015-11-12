*tmux.txt*	a plugin for |tmux.conf|

Author: Bruno Sutic <https://www.github.com/bruno->

INTRODUCTION					*vim-tmux* *tmux.conf*

Filetype plugin for '.tmux.conf'.

FEATURES					*tmux-features*

						*tmux-syntax-highlighting*
Should work properly.

						*tmux-comments*
						*tmux-commentstring*
Comment string is set to '#'.

						*tmux-K*
K		Jumps to the exact place in tmux manpage where the word under
		cursor is explained. This should work correctly on practically
		anything in |tmux.conf|

						*tmux-make*
:mak[e][!]	Sets 'makeprg' so that |:make| invokes tmux source |tmux.conf|
		and places all the errors (if any) in quicklist.

						*tmux-g!*
g!{motion}	Executes lines as tmux commands.
		Works on visual selection or as a motion. 'g!!' executes just
		the current line.

CONTRIBUTING					*tmux-contributing*

Contributing and bug reports are welcome. Github repo:

  https://github.com/tmux-plugins/vim-tmux

CHANGELOG					*tmux-changelog*

	v3.0.0:	November 16, 2014	* minor indentation rule for
					  multi-line strings
	v2.3.0:	November 16, 2014	* add |tmux-g!|, write the docs
	v2.2.0:	November 16, 2014	* much improved |tmux-K| mapping
	v2.1.0:	November 14, 2014	* 'makeprg', 'errorformat'
	v2.0.0:	November 14, 2014	* Add 'comment', 'commentstring',
					  basic support for 'keywordprg',
					  improve syntax highlighting.
	v1.0.0:	November 12, 2014	* Forked from
					  https://github.com/zaiste/tmux.vim

CREDITS						*tmux-credits*

* Tiago Cunha - created first syntax highlighting script for |tmux.conf|
* Zaiste (https://github.com/zaiste) - wrapped syntax highlihting script in
  vim plugin

LICENSE						*tmux-license*

Copyright (c) Bruno Sutic. Distributed under the MIT license.

vim:tw=78:ts=8:ft=help:norl:
