call plug#begin()
  Plug 'srstevenson/vim-picker'
  Plug 'junegunn/vim-easy-align'
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
  Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
  Plug 'fatih/vim-go', { 'tag': '*' }
  Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'gmarik/vundle'
  Plug 'morhetz/gruvbox'
  plug 'jremmen/vim-ripgrep'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-utils/vim-man'
  Plug 'ycm-core/YouCompleteMe'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


set guifont=Menlo\ Regular:h16
syntax enable
set background=light
colorscheme gruvbox
set lines=90 columns=1000
set number
:nnoremap <C-s> :PickerEdit<CR>
:nnoremap <C-x> :PickerSplit<CR>
:nnoremap <C-z> :PickerVsplit<CR
