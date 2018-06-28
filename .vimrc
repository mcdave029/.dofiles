syntax on

set noswapfile
set background=light
set laststatus=2
set t_Co=256

set clipboard=unnamed
set number
set cindent
set nocompatible
set mouse=a
set backspace=2   " Backspace deletes like most programs in insert mode
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

call plug#begin('~/.vim/plugged')
  Plug 'KKPMW/moonshine-vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'tpope/vim-fugitive'
  Plug 'mhinz/vim-startify'
  Plug 'mattn/emmet-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
  Plug 'mileszs/ack.vim'
  Plug 'vim-syntastic/syntastic'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'valloric/MatchTagAlways'
  Plug 'posva/vim-vue'
  Plug 'JamshedVesuna/vim-markdown-preview'
  Plug 'wakatime/vim-wakatime'
  Plug 'milch/vim-fastlane'
  Plug 'edkolev/tmuxline.vim'
call plug#end()

colorscheme moonshine_lowcontrast

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <C-j> :MtaJumpToOtherTag<cr>

"augroup autoindent
"  au!
"  autocmd BufWritePre *.rb,*.html,*.js,Gemfile :normal migg=G`i
"augroup End

let NERDTreeShowHidden=1
let g:ctrlp_show_hidden=1

let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

let g:startify_list_order = [
      \ ['   MRU'],           'files' ,
      \ ['   MRU '.getcwd()], 'dir',
      \ ]

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ 'bundle/.*/doc',
      \ ]

let g:startify_change_to_dir          = 0
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_session_autoload       = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence    = 1
let g:startify_update_oldfiles        = 1
let g:startify_use_env                = 1

" Showing syntax highlight group in statusline
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_vue_checkers = ['eslint', 'eslint-plugin-vue']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_ruby_checkers = ['mri', 'reek', 'rubocop']
let g:syntastic_scss_checkers = ['scss_lint']
"let g:syntastic_css_checkers = ['csslint']

let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
