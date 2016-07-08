syntax on

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
call plug#end()

set background=light
set t_Co=256
colorscheme moonshine

set clipboard=unnamedplus
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
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
Plugin 'vim-l9'
Plugin 'vim-fuzzyfinder'
Plugin 'gmarik/vundle'
Plugin 'Chiel192/vim-autoformat'
" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'MarkdownFootnotes'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'

augroup autoindent
  au!
  autocmd BufWritePre *.rb,*.css,*scss,*.html,*.js,Gemfile :normal migg=G`i
augroup End


    " Now we can turn our filetype functionality back on
    filetype plugin indent on

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
