" Mapping short keywords to their longer version so they can be found
" in man page with 'K'
let s:keyword_mappings = {
      \ 'attach':              'attach-session',
      \ 'bind':                'bind-key \[',
      \ 'bind-key':            'bind-key \[',
      \ 'breakp':              'break-pane',
      \ 'capturep':            'capture-pane',
      \ 'clearhist':           'clear-history',
      \ 'confirm':             'confirm-before',
      \ 'copyb':               'copy-buffer',
      \ 'deleteb':             'delete-buffer',
      \ 'detach':              'detach-client',
      \ 'display':             'display-message',
      \ 'displayp':            'display-panes',
      \ 'findw':               'find-window',
      \ 'has':                 'has-session',
      \ 'if':                  'if-shell',
      \ 'joinp':               'join-pane',
      \ 'killp':               'kill-pane',
      \ 'killw':               'kill-window',
      \ 'last':                'last-window',
      \ 'lastp':               'last-pane',
      \ 'linkw':               'link-window',
      \ 'loadb':               'load-buffer',
      \ 'lock':                'lock-server',
      \ 'lockc':               'lock-client',
      \ 'locks':               'lock-session',
      \ 'ls':                  'list-sessions',
      \ 'lsb':                 'list-buffers',
      \ 'lsc':                 'list-clients',
      \ 'lscm':                'list-commands',
      \ 'lsk':                 'list-keys',
      \ 'lsp':                 'list-panes',
      \ 'lsw':                 'list-windows \[',
      \ 'list-windows':        'list-windows \[',
      \ 'movep':               'move-pane',
      \ 'movew':               'move-window',
      \ 'new':                 'new-session',
      \ 'neww':                'new-window',
      \ 'next':                'next-window',
      \ 'nextl':               'next-layout',
      \ 'pasteb':              'paste-buffer',
      \ 'pipep':               'pipe-pane',
      \ 'prev':                'previous-window',
      \ 'prevl':               'previous-layout',
      \ 'refresh':             'refresh-client',
      \ 'rename':              'rename-session',
      \ 'renamew':             'rename-window',
      \ 'resizep':             'resize-pane',
      \ 'respawnp':            'respawn-pane',
      \ 'respawnw':            'respawn-window',
      \ 'rotatew':             'rotate-window',
      \ 'run':                 'run-shell',
      \ 'saveb':               'save-buffer',
      \ 'selectl':             'select-layout \[',
      \ 'select-layout':       'select-layout \[',
      \ 'selectp':             'select-pane',
      \ 'selectw':             'select-window',
      \ 'send':                'send-keys',
      \ 'set':                 'set-option \[',
      \ 'set-option':          'set-option \[',
      \ 'setb':                'set-buffer \[',
      \ 'set-buffer':          'set-buffer \[',
      \ 'setenv':              'set-environment',
      \ 'setw':                'set-window-option \[',
      \ 'set-window-option':   'set-window-option \[',
      \ 'show':                'show-options',
      \ 'showb':               'show-buffer',
      \ 'showenv':             'show-environment',
      \ 'showmsgs':            'show-messages',
      \ 'showw':               'show-window-options \[',
      \ 'show-window-options': 'show-window-options \[',
      \ 'source':              'source-file',
      \ 'splitw':              'split-window',
      \ 'start':               'start-server',
      \ 'suspendc':            'suspend-client',
      \ 'swapp':               'swap-pane',
      \ 'swapw':               'swap-window',
      \ 'switchc':             'switch-client \[',
      \ 'switch-client':       'switch-client \[',
      \ 'unbind':              'unbind-key \[',
      \ 'unbind-key':          'unbind-key \[',
      \ 'unlinkw':             'unlink-window'
      \ }

" Syntax highlighting group names are arranged by tmux manpage
" sections. That makes it easy to find a section in the manpage where the
" keyword is described.
" This dictionary provides a mapping between a syntax highlighting group and
" related manpage section.
let s:highlight_group_manpage_section = {
      \ 'tmuxClientSessionCmds': 'CLIENTS AND SESSIONS',
      \ 'tmuxWindowPaneCmds':    'WINDOWS AND PANES',
      \ 'tmuxBindingCmds':       'KEY BINDINGS',
      \ 'tmuxOptsSet':           'OPTIONS',
      \ 'tmuxOptsSetw':          'OPTIONS',
      \ 'tmuxEnvironmentCmds':   'ENVIRONMENT',
      \ 'tmuxStatusLineCmds':    'STATUS LINE',
      \ 'tmuxBufferCmds':        'BUFFERS',
      \ 'tmuxMiscCmds':          'MISCELLANEOUS',
      \ }

function! s:get_search_keyword(keyword)
  if has_key(s:keyword_mappings, a:keyword)
    return s:keyword_mappings[a:keyword]
  else
    return a:keyword
  endif
endfunction

function! s:man_tmux_search(section, regex)
  try
    exec 'norm! :/^'.a:section.'/ /'.a:regex."\<CR>"
    return 1
  catch
    return 0
  endtry
endfunction

function! tmux#man(...)
  if !exists(":Man")
    runtime! ftplugin/man.vim
  endif
  let keyword = expand("<cword>")
  let search_keyword = s:get_search_keyword(keyword)

  let highlight_group = synIDattr(synID(line("."), col("."), 1), "name")
  if has_key(s:highlight_group_manpage_section, highlight_group)
    let section = s:highlight_group_manpage_section[highlight_group]
  else
    let section = ''
  endif

  silent exec "norm! :Man tmux\<CR>"

  if s:man_tmux_search(section, '^\s\+\zs'.search_keyword) ||
     \ s:man_tmux_search(section, search_keyword) ||
     \ s:man_tmux_search('', keyword)
    norm! zt
  else
    redraw
    echohl ErrorMsg | echo "Sorry, couldn't find ".keyword | echohl None
  end
endfunction
