" Vim syntax file
" Language: tmux(1) configuration file
" URL:      https://github.com/tmux-plugins/vim-tmux
"
" Header from the original author
" --------------------------------------------------
" Creator: Tiago Cunha <me@tiagocunha.org>
" Last Change By The Creator: $Date: 2012-10-23 12:23:55 $
" License: This file is placed in the public domain.

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
syntax case match

syn keyword tmuxAction  any current none
syn keyword tmuxBoolean off on
syn keyword tmuxOptionValue top bottom left right top-left top-right
syn keyword tmuxOptionValue bottom-left bottom-right
syn keyword tmuxOptionValue vi emacs copy
syn keyword tmuxOptionValue even-horizontal even-vertical main-horizontal
syn keyword tmuxOptionValue main-vertical tiled

syn keyword tmuxSpecialCmds bind[-key] unbind[-key] set[-option]
syn keyword tmuxSpecialCmds setw set-window-option

syn keyword tmuxCmds detach[-client] ls list-sessions neww new-window
syn keyword tmuxCmds prev[ious-window] last[-window]
syn keyword tmuxCmds lsk list-keys renamew rename-window selectw
syn keyword tmuxCmds select-window lsw list-windows attach[-session]
syn keyword tmuxCmds send-prefix refresh[-client] killw kill-window lsc
syn keyword tmuxCmds list-clients linkw link-window unlinkw unlink-window
syn keyword tmuxCmds next[-window] send[-keys] swapw swap-window
syn keyword tmuxCmds rename[-session] kill-session switchc switch-client
syn keyword tmuxCmds has[-session] copy-mode pasteb paste-buffer
syn keyword tmuxCmds new[-session] start[-server] kill-server
syn keyword tmuxCmds show[-options] showw show-window-options
syn keyword tmuxCmds command-prompt setb set-buffer showb show-buffer lsb
syn keyword tmuxCmds list-buffers deleteb delete-buffer lscm list-commands
syn keyword tmuxCmds movew move-window respawnw respawn-window
syn keyword tmuxCmds source[-file] info server-info clock-mode lock[-server]
syn keyword tmuxCmds saveb save-buffer killp
syn keyword tmuxCmds kill-pane resizep resize-pane selectp select-pane swapp
syn keyword tmuxCmds swap-pane splitw split-window choose-session
syn keyword tmuxCmds choose-window loadb load-buffer copyb copy-buffer suspendc
syn keyword tmuxCmds suspend-client findw find-window breakp break-pane nextl
syn keyword tmuxCmds next-layout rotatew rotate-window confirm[-before]
syn keyword tmuxCmds clearhist clear-history selectl select-layout if[-shell]
syn keyword tmuxCmds display[-message] setenv set-environment showenv
syn keyword tmuxCmds show-environment choose-client displayp display-panes
syn keyword tmuxCmds lockc lock-client locks lock-session lsp
syn keyword tmuxCmds list-panes pipep pipe-pane showmsgs show-messages capturep
syn keyword tmuxCmds capture-pane joinp join-pane choose-buffer
syn keyword tmuxCmds choose-list lastp last-pane movep move-pane
syn keyword tmuxCmds prevl previous-layout prev[-window] respawnp respawn-pane

syn keyword tmuxOptsSet prefix prefix2 status status-fg status-bg bell-action
syn keyword tmuxOptsSet default-command history-limit status-left status-right
syn keyword tmuxOptsSet status-interval set-titles display-time buffer-limit
syn keyword tmuxOptsSet status-left-length status-right-length status-position
syn keyword tmuxOptsSet message-command-bg message-bg lock-after-time default-path
syn keyword tmuxOptsSet message-command-attr message-attr status-attr set-remain-on-exit
syn keyword tmuxOptsSet status-utf8 default-terminal visual-activity repeat-time
syn keyword tmuxOptsSet visual-bell visual-content status-justify status-keys
syn keyword tmuxOptsSet terminal-overrides status-left-attr status-left-bg
syn keyword tmuxOptsSet status-left-fg status-right-attr status-right-bg
syn keyword tmuxOptsSet status-right-fg update-environment base-index
syn keyword tmuxOptsSet display-panes-colour display-panes-time default-shell
syn keyword tmuxOptsSet set-titles-string lock-command lock-server
syn keyword tmuxOptsSet mouse-select-pane message-limit quiet escape-time
syn keyword tmuxOptsSet pane-active-border-bg pane-active-border-fg
syn keyword tmuxOptsSet pane-border-bg pane-border-fg message-command-fg message-fg
syn keyword tmuxOptsSet display-panes-active-colour alternate-screen
syn keyword tmuxOptsSet detach-on-destroy word-separators
syn keyword tmuxOptsSet destroy-unattached exit-unattached set-clipboard
syn keyword tmuxOptsSet bell-on-alert mouse-select-window mouse-utf8
syn keyword tmuxOptsSet mouse-resize-pane
syn keyword tmuxOptsSet renumber-windows visual-silence

syn match tmuxUserOptsSet /@[[:alnum:]_-]\+/ display

syn keyword tmuxOptsSetw monitor-activity aggressive-resize force-width
syn keyword tmuxOptsSetw force-height remain-on-exit uft8 mode-fg mode-bg
syn keyword tmuxOptsSetw mode-keys clock-mode-colour clock-mode-style
syn keyword tmuxOptsSetw xterm-keys mode-attr window-status-attr
syn keyword tmuxOptsSetw window-status-bg window-status-fg automatic-rename
syn keyword tmuxOptsSetw main-pane-width main-pane-height monitor-content
syn keyword tmuxOptsSetw window-status-current-attr window-status-current-bg
syn keyword tmuxOptsSetw window-status-current-fg mode-mouse synchronize-panes
syn keyword tmuxOptsSetw window-status-format window-status-current-format
syn keyword tmuxOptsSetw window-status-activity-attr
syn keyword tmuxOptsSetw window-status-activity-bg window-status-activity-fg
syn keyword tmuxOptsSetw window-status-bell-attr
syn keyword tmuxOptsSetw window-status-bell-bg window-status-bell-fg
syn keyword tmuxOptsSetw window-status-content-attr
syn keyword tmuxOptsSetw window-status-content-bg window-status-content-fg
syn keyword tmuxOptsSetw pane-base-index other-pane-height other-pane-width
syn keyword tmuxOptsSetw allow-rename c0-change-interval c0-change-trigger
syn keyword tmuxOptsSetw layout-history-limit monitor-silence utf8 wrap-search

" concatenating flag '-t' and table name is a valid syntax
syn keyword tmuxKeyTable vi-edit emacs-edit vi-choice emacs-choice vi-copy
syn keyword tmuxKeyTable emacs-copy -tvi-edit -temacs-edit -tvi-choice
syn keyword tmuxKeyTable -temacs-choice -tvi-copy -temacs-copy

" keywords for vi/emacs edit, choice and copy modes
syn keyword tmuxModeCmds append-selection back-to-indentation backspace
syn keyword tmuxModeCmds begin-selection bottom-line cancel choose clear-selection
syn keyword tmuxModeCmds complete copy-end-of-line copy-pipe copy-selection
syn keyword tmuxModeCmds cursor-down cursor-left cursor-right cursor-up delete
syn keyword tmuxModeCmds delete-end-of-line delete-line delete-word down
syn keyword tmuxModeCmds end-of-line end-of-list enter goto-line halfpage-down
syn keyword tmuxModeCmds halfpage-up history-bottom history-down history-top
syn keyword tmuxModeCmds history-up jump-again jump-backward jump-forward
syn keyword tmuxModeCmds jump-reverse jump-to-backward jump-to-forward middle-line
syn keyword tmuxModeCmds next-space next-space-end next-word next-word-end other-end
syn keyword tmuxModeCmds page-down page-up paste previous-space previous-word
syn keyword tmuxModeCmds rectangle-toggle scroll-down scroll-up search-again
syn keyword tmuxModeCmds search-backward search-forward search-reverse
syn keyword tmuxModeCmds start-named-buffer start-number-prefix start-of-line
syn keyword tmuxModeCmds start-of-list switch-mode switch-mode-append
syn keyword tmuxModeCmds switch-mode-append-line switch-mode-begin-line
syn keyword tmuxModeCmds switch-mode-change-line switch-mode-substitute
syn keyword tmuxModeCmds switch-mode-substitute-line top-line transpose-chars
syn keyword tmuxModeCmds tree-collapse tree-collapse-all tree-expand
syn keyword tmuxModeCmds tree-expand-all tree-toggle up

" run-shell is special when at the beginning of the line
syn match tmuxCmds        /run\(-shell\)\?/ display
syn match tmuxSpecialCmds /^\s*run\(-shell\)\?/ display

syn region tmuxComment start=/#/ end=/$/ contains=tmuxTodo,tmuxURL display oneline

syn keyword tmuxTodo FIXME NOTE TODO XXX todo contained
syn match tmuxURL `\v<(((https?|ftp|gopher)://|(mailto|file|news):)[^'  <>"]+|(www|web|w3)[a-z0-9_-]*\.[a-z0-9._-]+\.[^'  <>"]+)[a-zA-Z0-9/]` contained

syn match tmuxKey               /\(C-\|M-\|\^\)\+\S\+/  display
syn match tmuxNumber            /[+-]\?\d\+/            display
syn match tmuxSelWindowOption   /:[!+-]/                display
syn match tmuxOptions           /\s-\a\+/               display
syn match tmuxVariable          /\w\+=/                 display
syn match tmuxVariableExpansion /\${\=\w\+}\=/          display

" These keys can be used for the 'bind' command
syn keyword tmuxKeySymbol Enter Escape Space BSpace Home End Tab BTab DC IC
syn keyword tmuxKeySymbol F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12
syn keyword tmuxKeySymbol NPage PageDown PgDn PPage PageUp PgUp
syn keyword tmuxKeySymbol Up Down Left Right

syn match tmuxColor /\(bright\)\?\(black\|red\|green\|yellow\|blue\|magenta\|cyan\|white\)/ display
syn match tmuxColor /default/        display
syn match tmuxColor /colour\d\{1,3}/ display
syn match tmuxColor /#\x\{6}/        display
syn match tmuxStyle /\(no\)\?\(bright\|bold\|dim\|underscore\|blink\|reverse\|hidden\|italics\)/ display

syn match tmuxPromptInpol /%[[:digit:]%]/ contained

" Matching `man 3 strftime` formats
syn match tmuxDateInpol /%[0_^#-]\?[A-DF-IMR-Z+]/     contained
syn match tmuxDateInpol /%[0_^#-]\?[a-eghj-npr-z]/    contained
syn match tmuxDateInpol /%[0_^#-]\?E[cCxXyY]/         contained
syn match tmuxDateInpol /%[0_^#-]\?O[BdeHImMSuUVwWy]/ contained

" Format aliases
syn match tmuxFmtAlias /#[HhDPTSFIW#]/ contained

" Format interpolation
syn region tmuxFmtInpol matchgroup=tmuxInpolDelimiter start=/#{/ skip=/#{.\{-}}/ end=/}/ contained keepend contains=tmuxFmtVariable,tmuxFmtConditional,tmuxFmtLimit
syn match  tmuxFmtVariable    /[[:alnum:]_-]\+/ contained display
syn match  tmuxFmtConditional /[?,]/            contained display
syn match  tmuxFmtLimit       /=.\{-}:/         contained display contains=tmuxNumber

" Attribute interpolation
syn region tmuxAttrInpol matchgroup=tmuxInpolDelimiter start=/#\[/ skip=/#\[.\{-}]/ end=/]/ contained keepend contains=tmuxColor,tmuxAttrBgFg,tmuxAttrEquals,tmuxAttrSeparator,tmuxStyle
syn match  tmuxAttrBgFg      /[fb]g/ contained display
syn match  tmuxAttrEquals    /=/     contained display
syn match  tmuxAttrSeparator /,/     contained display

" Shell command interpolation
syn region tmuxShellInpol matchgroup=tmuxInpolDelimiter start=/#(/ skip=/#(.\{-})/ end=/)/ contained keepend

syn region tmuxString matchgroup=tmuxStringDelimiter start=/"/ skip=/\\./ end=/"/ contains=tmuxFmtInpol,tmuxFmtAlias,tmuxAttrInpol,tmuxShellInpol,tmuxPromptInpol,tmuxDateInpol display keepend
syn region tmuxString matchgroup=tmuxStringDelimiter start=/'/ end=/'/            contains=tmuxFmtInpol,tmuxFmtAlias,tmuxAttrInpol,tmuxShellInpol,tmuxPromptInpol,tmuxDateInpol display keepend

hi def link tmuxAction              Boolean
hi def link tmuxBoolean             Boolean
hi def link tmuxOptionValue         Constant
hi def link tmuxCmds                Keyword
hi def link tmuxSpecialCmds         Type
hi def link tmuxComment             Comment
hi def link tmuxKey                 Special
hi def link tmuxKeySymbol           Special
hi def link tmuxNumber              Number
hi def link tmuxSelWindowOption     Number
hi def link tmuxOptions             Operator
hi def link tmuxOptsSet             PreProc
hi def link tmuxUserOptsSet         Identifier
hi def link tmuxOptsSetw            PreProc
hi def link tmuxKeyTable            PreProc
hi def link tmuxModeCmds            Keyword
hi def link tmuxString              String
hi def link tmuxStringDelimiter     Delimiter
hi def link tmuxColor               Constant
hi def link tmuxStyle               Constant

hi def link tmuxPromptInpol         Special
hi def link tmuxDateInpol           Special
hi def link tmuxFmtAlias            Special
hi def link tmuxFmtVariable         Constant
hi def link tmuxFmtConditional      Conditional
hi def link tmuxFmtLimit            Operator
hi def link tmuxAttrBgFg            Constant
hi def link tmuxAttrEquals          Operator
hi def link tmuxAttrSeparator       Operator
hi def link tmuxShellInpol          String
hi def link tmuxInpolDelimiter      Delimiter

hi def link tmuxTodo                Todo
hi def link tmuxURL                 Underlined
hi def link tmuxVariable            Constant
hi def link tmuxVariableExpansion   Constant

let b:current_syntax = "tmux"
