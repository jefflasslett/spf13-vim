" Modeline and Notes {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
"
"                    __ _ _____              _
"         ___ _ __  / _/ |___ /      __   __(_)_ __ ___
"        / __| '_ \| |_| | |_ \ _____\ \ / /| | '_ ` _ \
"        \__ \ |_) |  _| |___) |_____|\ V / | | | | | | |
"        |___/ .__/|_| |_|____/        \_/  |_|_| |_| |_|
"            |_|
"
"   This is the personal .vimrc.bundles file of Steve Francia.
"   While much of it is beneficial for general use, I would
"   recommend picking out the parts you want and understand.
"
"   This file imports the various plugins of spf13. If you
"   wish to alter which groups are imported, see vimrc.before.
"   If you wish to add or remove individual bundles, create
"   ~/.vimrc.bundles.local and `Bundle` or `UnBundle` as needed
"   from there.
"
"   You can find me at http://spf13.com
" }

    " In your .vimrc.before.local file
    " list only the plugin groups you will use
    if !exists('g:spf13_bundle_groups')
        let g:spf13_bundle_groups=['general', 'writing', 'neocomplcache', 'programming', 'haskell', 'ruby', 'javascript', 'html', 'elm', 'misc', 'writing' ]
    endif

    " To override all the included bundles, add the following to your
    " .vimrc.bundles.local file:
    "   let g:override_spf13_bundles = 1

    " General {
        if count(g:spf13_bundle_groups, 'general')
            Bundle 'scrooloose/nerdtree'
            Bundle 'spf13/vim-colors'
            Bundle 'kien/ctrlp.vim'
            Bundle 'vim-scripts/sessionman.vim'
            Bundle 'matchit.zip'
            Bundle 'bling/vim-airline'
            Bundle 'godlygeek/csapprox'
            Bundle 'jistr/vim-nerdtree-tabs'
            Bundle 'jefflasslett/coding_goodness'
            Bundle 'mbbill/undotree'
            Bundle 'nathanaelkane/vim-indent-guides'
            if !exists('g:spf13_no_views')
                Bundle 'vim-scripts/restore_view.vim'
            endif
            Bundle 'mhinz/vim-signify'
            Bundle 'tpope/vim-abolish.git'
            Bundle 'osyo-manga/vim-over'
            Bundle 'kana/vim-textobj-user'
            Bundle 'kana/vim-textobj-indent'
            Bundle 'troydm/easybuffer.vim'
           
        endif
    " }

    " General Programming {
        if count(g:spf13_bundle_groups, 'programming')
            " Pick one of the checksyntax, jslint, or syntastic
            Bundle 'scrooloose/syntastic'
            Bundle 'tpope/vim-fugitive'
            Bundle 'mattn/webapi-vim'
            Bundle 'mattn/gist-vim'
            Bundle 'scrooloose/nerdcommenter'
            Bundle 'godlygeek/tabular'
            if executable('ctags')
                Bundle 'majutsushi/tagbar'
            endif
        endif
    " }

    " Snippets & AutoComplete {
        if count(g:spf13_bundle_groups, 'snipmate')
            Bundle 'garbas/vim-snipmate'
            Bundle 'honza/vim-snippets'
            " Source support_function.vim to support vim-snippets.
            if filereadable(expand("~/.vim/bundle/vim-snippets/snippets/support_functions.vim"))
                source ~/.vim/bundle/vim-snippets/snippets/support_functions.vim
            endif
        elseif count(g:spf13_bundle_groups, 'youcompleteme')
            Bundle 'Valloric/YouCompleteMe'
            Bundle 'SirVer/ultisnips'
            Bundle 'honza/vim-snippets'
        elseif count(g:spf13_bundle_groups, 'neocomplcache')
            Bundle 'Shougo/neocomplcache'
            Bundle 'Shougo/neosnippet'
            Bundle 'Shougo/neosnippet-snippets'
            Bundle 'honza/vim-snippets'
        elseif count(g:spf13_bundle_groups, 'neocomplete')
            Bundle 'Shougo/neocomplete.vim.git'
            Bundle 'Shougo/neosnippet'
            Bundle 'Shougo/neosnippet-snippets'
            Bundle 'honza/vim-snippets'
        endif
    " }

    " Javascript {
        if count(g:spf13_bundle_groups, 'javascript')
            Bundle 'elzr/vim-json'
            Bundle 'groenewege/vim-less'
            Bundle 'pangloss/vim-javascript'
            Bundle 'briancollins/vim-jst'
            Bundle 'kchmck/vim-coffee-script'
            Bundle 'maksimr/vim-jsbeautify'
            Bundle 'einars/js-beautify'
        endif
    " }

    " Haskell {
        if count(g:spf13_bundle_groups, 'haskell')
            Bundle 'travitch/hasksyn'
            Bundle 'dag/vim2hs'
            Bundle 'Twinside/vim-haskellConceal'
            Bundle 'Twinside/vim-haskellFold'
            Bundle 'lukerandall/haskellmode-vim'
            Bundle 'eagletmt/neco-ghc'
            Bundle 'eagletmt/ghcmod-vim'
            Bundle 'Shougo/vimproc'
            Bundle 'adinapoli/cumino'
            Bundle 'bitc/vim-hdevtools'
        endif
    " }

    " HTML {
        if count(g:spf13_bundle_groups, 'html')
            Bundle 'hail2u/vim-css3-syntax'
            Bundle 'gorodinskiy/vim-coloresque'
            Bundle 'mattn/emmet-vim'
        endif
    " }
    "
    " Elm {
        if count(g:spf13_bundle_groups, 'elm')
            Bundle 'lambdatoast/elm.vim'
        endif
    " }

    " Ruby {
        if count(g:spf13_bundle_groups, 'ruby')
            Bundle 'tpope/vim-rails'
            let g:rubycomplete_buffer_loading = 1
            "let g:rubycomplete_classes_in_global = 1
            "let g:rubycomplete_rails = 1
        endif
    " }

    " Misc {
        if count(g:spf13_bundle_groups, 'misc')
            Bundle 'tpope/vim-markdown'
            Bundle 'spf13/vim-preview'
            Bundle 'tpope/vim-cucumber'
            Bundle 'ryanss/vim-hackernews'
        endif
    " }

    " Writing {
        if count(g:spf13_bundle_groups, 'writing')
            Bundle 'reedes/vim-litecorrect'
            Bundle 'reedes/vim-textobj-sentence'
            Bundle 'reedes/vim-textobj-quote'
            Bundle 'reedes/vim-wordy'
        endif
    " }
