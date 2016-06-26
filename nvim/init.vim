"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.config/nvim/bundle'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('mattn/emmet-vim')

call dein#add('nathanaelkane/vim-indent-guides')

" Dev tools
call dein#add('rking/ag.vim')
call dein#add('Shougo/deoplete.nvim')
call dein#add('tpope/vim-fugitive')
call dein#add('scrooloose/nerdcommenter')

" .NET
call dein#add('OmniSharp/omnisharp-vim', {
            \ 'build': 'sh -c "cd server/ && xbuild"',
            \ 'on_ft': 'cs'
            \ })
call dein#add('https://gitlab.com/mixedCase/deoplete-omnisharp.git', {
            \ 'on_ft': 'cs'
            \ })

" Python
call dein#add('zchee/deoplete-jedi')
call dein#add('davidhalter/jedi-vim')

" PHP
"call dein#add('pjio/phpcomplete-extended')

call dein#add('neomake/neomake')
call dein#add('ctrlpvim/ctrlp.vim')

" Syntax plugins
call dein#add('jwalton512/vim-blade')
call dein#add('digitaltoad/vim-pug')
call dein#add('lepture/vim-jinja')

" Aestethics
call dein#add('chriskempson/base16-vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')


" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" Python config ---------------------------
let g:python_host_prog = '/home/j/.pyenv/versions/2.7.11/bin/python'
let g:python3_host_prog = '/home/j/.pyenv/versions/3.5.1/bin/python'
" Jedi
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures_delay = 2000

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" End dein Scripts-------------------------

" Neomake ---------------------------------
autocmd! BufWritePost * Neomake

    " Neomake python config
    let g:neomake_python_enabled_makers = ['pylint']
"------------------------------------------

" Deoplete --------------------------------
let g:deoplete#enable_at_startup=1

" Editor ----------------------------------
set colorcolumn=120
set expandtab
set tabstop=4
set shiftwidth=4
set listchars=tab:>⟶
set hidden
let mapleader = "\<Space>"
nnoremap <leader><Space> :set hlsearch!<CR>

" Nerd commenter --------------------------
let g:NERDCustomDelimiters = { 'jinja.html': { 'left': '{#','right': '#}' } }

" CtrlP -----------------------------------
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_working_path_mode = 'ra'

" Reselect on indentation
vnoremap > >gv
vnoremap < <gv

" Color -----------------------------------
set background=light
set t_Co=256
colorscheme base16-solarized
let base16colorspace=256  " Access colors present in 256 colorspace

" Airline ---------------------------------
let g:airline_theme="base16_solarized"

" PHP config ------------------------------
let g:phpcomplete_index_composer_command='composer'
