" The next three lines ensure that the plugin system works
set nocompatible

filetype on  " Work-around for a possible problem on macs
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'gmarik/Vundle.vim'
Plugin 'jefflasslett/coding_goodness'
Plugin 'scrooloose/nerdtree'

Plugin 'Shougo/vimproc'
Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'rking/ag.vim'

" ================ Haskell ================== {
"
" ---------- VERY IMPORTANT -----------
" Don't forget to install ghc-mod with:
" cabal install ghc-mod
" -------------------------------------

Plugin 'scrooloose/syntastic'             " syntax checker
" --- Haskell
" Plugin 'enomsg/vim-haskellConcealPlus'    " unicode for haskell operators
Plugin 'Twinside/vim-haskellConceal'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'Twinside/vim-hoogle'
Plugin 'pbrisbin/html-template-syntax'    " Yesod templates

" Plugin 'Twinside/vim-haskellFold'

" Plugin 'travitch/hasksyn'
" Plugin 'dag/vim2hs'
" Plugin 'bitc/vim-hdevtools'
" Plugin 'adinapoli/cumino'
" Plugin 'lukerandall/haskellmode-vim'

" }

Plugin 'bling/vim-airline'

Plugin 'Valloric/YouCompleteMe'

" Plugin 'Shougo/neocomplete'
" Plugin 'Shougo/neosnippet'
" Plugin 'Shougo/neosnippet-snippets'

Plugin 'mattn/emmet-vim'
Plugin 'groenewege/vim-less'

" ================ Rails  ================== {
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
" }

call vundle#end()

filetype plugin indent on


