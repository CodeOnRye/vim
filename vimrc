" Basic Settings
filetype on
syntax on
colorscheme nova
set guifont=Ubuntu\ Mono:h11
set colorcolumn=150
set number
set hlsearch
set showmatch

" Increase History
set hidden
set history=100

" Set up tabbing/indenting
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set pastetoggle=<F3>
" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Shortcut commands
map <leader>s :source ~/.vimrc<CR>

" Pathogen autoload
execute pathogen#infect()

"Plugins
"lightline.vim
set noshowmode
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }
