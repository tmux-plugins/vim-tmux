# Changelog

### master

### v2.0.0, 2014-11-14
- add 'comment' and 'commentstring'
- 'keywordprg' always opens man tmux and ignores the word under cursor
- tmux strings can span several lines
- add support for user options
- do not check for vim version less than 6.0
- double quote strings can be escaped
- fix: syntax keyword optional notation can be used only for string parts at the
  end of the file
- add syntax highlighting for format variables
- syntax support for format aliases
- syntax highlighting for attribute interpolation
- syntax highlighting for shell interpolation
- string delimiters highlighting
- use delimiter highlighting groups for interpolation regions
- proper support for colors, fix bug for hex colors
- support for prompt interpolation chars
- highlight URLs in comments
- support for vi-edit, emacs-edit, vi-choice, emacs-choice, vi-copy and
  emacs-copy mode keywords
- better support for number with plus or minus +,- prefix
- support for additional option values
- support for bind key symbols
- support for select-window option format
- support for strftime interpolation in strings
- improve a groups of keys that can be bound to a command

### v1.0.0, 2014-11-12
- forked from https://github.com/zaiste/tmux.vim
