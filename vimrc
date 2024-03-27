VIm setup


Font set command
:set guifont=Menlo\ Regular:h16

Plug Install inside autoload dir
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

syntax enable
set background=dark
colorscheme solarized


set lines=90 columns=1000
:nnoremap <C-s> :PickerEdit<CR>
:nnoremap <C-x> :PickerSplit<CR>
:nnoremap <C-z> :PickerVsplit<CR>


set swapfile
set dir=~/tmp




Plug 'srstevenson/vim-picker'
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




color scheme 


https://vimcolorschemes.com/
