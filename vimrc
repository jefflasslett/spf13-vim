" Modeline and Notes {
" vim: set sw=2 ts=2 sts=2 et tw=78:
"
"   Mod(ular) vimrc
"
"   This is the personal .vimrc/init.vim of Jeff Lasslett.
"
"   It started out as spf-13 (Steve Francia's) vimrc.  But things got out of
"   hand and spf-13 had to be gutted.  Also, I found my vim sessions could get
"   a biiiitt   slloooooow.
"
"   So in the words of the rogue marine to Nick Cage in "The Rock":
"     "I'll take pleasure in guttin' you boy!"
"
"   You can find the original spf-13 at http://spf13.com
"
"   ========================================================================
"
"   Copyright 2015 Jeff Lasslett
"
"   Licensed under the Apache License, Version 2.0 (the "License");
"   you may not use this file except in compliance with the License.
"   You may obtain a copy of the License at
"
"       http://www.apache.org/licenses/LICENSE-2.0
"
"   Unless required by applicable law or agreed to in writing, software
"   distributed under the License is distributed on an "AS IS" BASIS,
"   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
"   See the License for the specific language governing permissions and
"   limitations under the License.
" }

" Bootstrap {
"
" Create variables to hold the names of important directories in this
" modular config tree:
"
" g:vim_root_dir      <- $HOME for vim, $HOME/.config/nvim for neovim.
" |                       See variable definitions below.
" |
" |-- init.vim        <- If using neovim init.vim will be a symlink to
" |                      this file (mod-vim/vimrc)
" |
" +-- .vimrc          <- If using vim .vimrc will usually be a symlink to this
" |                      file (mod-vim/vimrc).
" |
" +-- g:mod_root_dir  <- The root of our vim config.
" |   |                  For vim: this can be $HOME/.vim.d/ which can be a 
" |   |                  symlink to mod-vim/vim.d/.
" |   |                  For neovim: $HOME/.config/nvim/mod-vim.d/ which can
" |   |                  also be a symlink to mod-vim/vim.d/.
""|   |
" |   +-- conf.d      <- contains symlinks to 'parts'.  These parts form the
" |   |                  active configuration.
" |   |
" |   +-- parts.d     <- 'parts' fragments of vim config to be sourced by
" |   |   |              .vimrc
" |   |   |
" |   |   +-- <*>        <- other vim config fragments to be included
" |   |
" |   +-- helpers.d      <- fragments of viml with functions to assist the
" |                         loading of the config
" |
" +-- g:mod_data_dir     <- Parent dir for files (n)vim creates while editing.
" |   |                     May not actually be under g:vim_root_dir.  nvim
" |   |                     places it under ~/.local/share/nvim/
" |   |
" |   +-- swap.d         <- swap file directory
" |   |
" |   +-- view.d         <- view file directory
" |   |
" |   +-- undo.d         <- undo file directory
" |   |
" |   +-- backup.d       <- backup file directory
" |
" +-- g:mod-plugins-dir <- Plugins installed below here.
" |   |                    For vim: $HOME/.vim/bundle/ typically.
" |   |                    for neovim: $HOME/.config/nvim/plugins.d/
" |   |
" |   +-- <plugins>
"
" Assume unix conventions to begin with.  This config won't work on windows
" first up.

  " For neovim: set to $HOME/.config/nvim or $XDG_CONFIG_HOME/nvim (default)
  " For vim: set to $HOME
  let g:vim_root_dir = expand( '~/.config/nvim' )

  " For neovim: set to $HOME/.local/share/nvim (default)
  " For vim: set to $HOME/.vim.d or perhaps $HOME/.vim or some other spot
  let g:mod_data_dir = expand( '~/.local/share/nvim' )

  " For neovim: set to $HOME/.config/nvim/mod-vim.d or
  "             $XDG_CONFIG_HOME/nvim/mod-vim.d (default)
  " For vim: set to $HOME/.vim.d/
  let g:mod_root_dir    = g:vim_root_dir.'/mod-vim.d'

  " For neovim: set to $HOME/.config/nvim/plugins.d or
  "             $XDG_CONFIG_HOME/nvim/plugins.d (default)
  " For vim: set to $HOME/.vim/plugins.d
  let g:mod_plugins_dir = g:vim_root_dir.'/plugins.d'

  let g:mod_parts_dir   = g:mod_root_dir.'/parts.d'
  let g:mod_helpers_dir = g:mod_root_dir.'/helpers.d'
  let g:mod_conf_dir    = g:mod_root_dir.'/conf.d'

  let g:mod_swap_dir    = g:mod_data_dir.'/swap.d'
  let g:mod_views_dir   = g:mod_data_dir.'/views.d'
  let g:mod_undo_dir    = g:mod_data_dir.'/undo.d'
  let g:mod_backup_dir  = g:mod_data_dir.'/backup.d'

  " Check that the root dir exists, otherwise none of this can work.
  if !isdirectory(g:mod_root_dir)
    let g:no_mod_config = 1
  else
    " Add the helper function dir to the runtime path.
    exec 'set rtp+='.g:mod_helpers_dir
    let g:no_mod_config = 0
  endif

  " Load up the helper functions
  if !g:no_mod_config

    exec 'source '.g:mod_helpers_dir.'/runparts.vim'
    exec 'source '.g:mod_helpers_dir.'/os.vim'

    " No pattern so run each part linked in conf.d dir.  These will be run in
    " lexicograhical order.  The links all have a 3 digit prefix that
    " indicates the order in which they are to be sourced.
    call Mod_runConf( '' )

  endif

" }

