" Map leader to which_key
let g:mapleader = "\<Space>"
let g:maplocalleader = ","
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_ep = '→'
set timeoutlen=200


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
nnoremap <silent> <leader>m :marks<CR>
let g:which_key_map.m = 'marks'
let g:which_key_map['d'] = [ ':bd'                              , 'delete buffer' ]
let g:which_key_map['/'] = [ ':Commentary'                      , 'comment' ]
let g:which_key_map['p'] = [ ':Telescope oldfiles'              , 'open old files']
let g:which_key_map['e'] = [ ':Ex'                              , 'explorer']
let g:which_key_map['h'] = [ '<C-W>s'                           , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                           , 'split right']

let g:which_key_map.f = {
      \ 'name' : '+files' ,
      \ 'i' : [ ':e $RC'                                    , 'open init.vim' ],
      \ 'g' : [ ':e $CONF/plug.vim'                         , 'open plug.vim' ],
      \ 'b' : [ ':e $HOME/.bashrc'                          , 'open .bashrc' ],
      \ 'k' : [ ':e $CONF/after/plugin/which-key.rc.vim'    , 'edit keys' ],
      \ 'p' : [ ':e $NOTES/passwords.txt'                   , 'passwords' ],
      \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ 'f' : [':Telescope find_files'     , 'files'],
      \ 'o' : [':Telescope oldfiles'       , 'oldfiles'],
      \ 'g' : [':Telescope live_grep'      , 'grep'],
      \ 'h' : [':Telescope help_tags'      , 'help tags'],
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

let g:which_key_map['l'] = {
        \ 'name' : '+lsp',
        \ 'r' : ['<Plug>(coc-rename)'  , 'rename'],
        \ 'd' : [':CocList diagnostics'  , 'diagnostic'],
        \ 'c' : [':CocList commands'  , 'commands'],
        \ 's' : [':CocList -I symbols'  , 'symbols'],
        \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
