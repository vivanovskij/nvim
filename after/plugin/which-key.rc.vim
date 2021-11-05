" Map leader to which_key
let g:mapleader = "\<Space>"
" let g:maplocalleader = ","
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_ep = '→'
set timeoutlen=500


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['/'] = [ ':Commentary'     , 'comment' ]
let g:which_key_map['d'] = [ ':bd'             , 'delete buffer' ]
let g:which_key_map['e'] = [ ':CocCommand explorer' , 'explorer']
let g:which_key_map['m'] = [ ':Marks'               , 'marks']
let g:which_key_map['p'] = [ ':History'        , 'previous files']
let g:which_key_map['r'] = [':FloatermNew ranger' , 'ranger']
let g:which_key_map['s'] = [ ':CocList snippets' , 'snippets']
let g:which_key_map['h'] = [ '<C-W>s'          , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'          , 'split right']

" Git
let g:which_key_map.g = {'name' : '+git'}
nnoremap <silent> <leader>gs :!git status<CR>
let g:which_key_map.g.s = 'status'
nnoremap <silent> <leader>ga :!git add<Space>
let g:which_key_map.g.a = 'add'
nnoremap <silent> <leader>gc :!git commit -am ""<Left>
let g:which_key_map.g.c = 'commit'
nnoremap <silent> <leader>gd :!git diff<CR>
let g:which_key_map.g.d = 'diff'
nnoremap <silent> <leader>gD :!git rm<Space>
let g:which_key_map.g.D = 'delete'
nnoremap <silent> <leader>gl :!git log --oneline<CR>
let g:which_key_map.g.l = 'log --oneline'
nnoremap <silent> <leader>gL :!git log<CR>
let g:which_key_map.g.L = 'log'
nnoremap <silent> <leader>gm :!git mv<Space>
let g:which_key_map.g.m = 'move'
nnoremap <silent> <leader>gp :!git push origin master<CR>
let g:which_key_map.g.p = 'push'


let g:which_key_map['l'] = {
        \ 'name' : '+lsp',
        \ 'r' : ['<Plug>(coc-rename)'  , 'rename'],
        \ 'd' : [':CocList diagnostics'  , 'diagnostic'],
        \ 'c' : [':CocList commands'  , 'commands'],
        \ 's' : [':CocCommand snippets.editSnippets'  , 'edit snippets'],
        \ 'a' : [':call CocActionAsync("codeAction", visualmode())'  , 'action'],
        \ }

let g:which_key_map.o = {
      \ 'name' : '+open' ,
      \ 'a' : [ ':e ~/.config/alacritty/alacritty.yml'    , 'open alacritty.yaml' ],
      \ 'b' : [ ':e $HOME/.bashrc'                        , 'open .bashrc' ],
      \ 'C' : [ ':e $CONF/after/plugin/coc.rc.vim'        , 'open coc.rc.vim' ],
      \ 'c' : [ ':e $CONF/coc-settings.json'                       , 'open coc-settings.json' ],
      \ 'i' : [ ':e $RC'                                  , 'open init.vim' ],
      \ 'k' : [ ':e $CONF/after/plugin/which-key.rc.vim'  , 'edit hot keys' ],
      \ 'p' : [ ':e $CONF/plug.vim'                       , 'open plug.vim' ],
      \ 'P' : [ ':e $NOTES/passwords.txt'                 , 'open passwords' ],
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current bufer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':CocList snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup' , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'h' : [':FloatermNew htop'                              , 'htop'],
      \ }

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'c' : ['<C-W>c'     , 'close-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
