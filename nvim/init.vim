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
call dein#add('itchyny/lightline.vim')
call dein#add('airblade/vim-gitgutter')
call dein#add('gregsexton/gitv')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-repeat')
call dein#add('vim-scripts/matchit.zip')
call dein#add('Shougo/neosnippet.vim')

" .NET
call dein#add('OmniSharp/omnisharp-vim', {
            \ 'build': 'sh -c "cd server/ && xbuild"',
            \ 'on_ft': 'cs'
            \ })
call dein#add('https://gitlab.com/mixedCase/deoplete-omnisharp.git', {
            \ 'on_ft': 'cs'
            \ })

" git
let g:gitgutter_max_signs=100000

" C/C++
call dein#add('zchee/deoplete-clang')
call dein#add('octol/vim-cpp-enhanced-highlight')

" Python
call dein#add('zchee/deoplete-jedi')
call dein#add('davidhalter/jedi-vim')
call dein#add('tmhedberg/SimpylFold')
call dein#add('heavenshell/vim-pydocstring')
call dein#add('Yggdroot/indentLine')

" PHP
"call dein#add('pjio/phpcomplete-extended')

" Javascript
call dein#add('pangloss/vim-javascript')
call dein#add('ternjs/tern_for_vim')
" JSX
call dein#add('mxw/vim-jsx')
" Flow
"call dein#add('steelsojka/deoplete-flow')
" Typescript
call dein#add('leafgarland/typescript-vim')
" Angular2
call dein#add('magarcia/vim-angular2-snippets')
" JSON
call dein#add('elzr/vim-json')

" Utility
call dein#add('neomake/neomake')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('easymotion/vim-easymotion')

" Syntax plugins
call dein#add('jwalton512/vim-blade')
call dein#add('digitaltoad/vim-pug')
call dein#add('lepture/vim-jinja')

" Aestethics
call dein#add('chriskempson/base16-vim')
"call dein#add('altercation/vim-colors-solarized')
call dein#add('lifepillar/vim-solarized8')
call dein#add('Ardakilic/vim-tomorrow-night-theme')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" Python config ---------------------------
let g:python2_host_prog = '/home/j/.pyenv/versions/2.7.11/bin/python'
let g:python3_host_prog = '/home/j/.pyenv/versions/3.5.1/bin/python'
" Jedi
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures_delay = 2000
let g:jedi#smart_auto_mappings = 0

" C/C++ config ----------------------------
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang/3.9.1/include"

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" End dein Scripts-------------------------

" Neomake ---------------------------------
autocmd! BufWritePost * Neomake

    " Neomake python config
    let g:neomake_python_enabled_makers = ['pylint']
    let g:neomake_javascriot_enabled_makers = ['flow','eslint']
"------------------------------------------

" Deoplete --------------------------------
let g:deoplete#enable_at_startup=1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Neosnippet ------------------------------
let g:neosnippet#enable_snipmate_compatibility = 1

" Editor ----------------------------------
set colorcolumn=120
set expandtab
set tabstop=4
set shiftwidth=4
set listchars=tab:>⟶
set hidden
set conceallevel=0
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
let mapleader = "\<Space>"
nnoremap <leader><Space> za
nnoremap <leader>b :b #<CR>

" Neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Nerd commenter --------------------------
let g:NERDCustomDelimiters = { 'jinja.html': { 'left': '{#','right': '#}' } }

" CtrlP -----------------------------------
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|.git'

" Reselect on indentation
vnoremap > >gv
vnoremap < <gv

" Color -----------------------------------
"set background=light
"if filereadable(expand("~/.vimrc_background"))
    "let base16colorspace=256
    "source ~/.vimrc_background
"endif
hi Folded ctermfg=15
hi FoldedColumn ctermfg=15
hi Search ctermbg=gray ctermfg=white

" Lightline  ------------------------------
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }

" PHP config ------------------------------
let g:phpcomplete_index_composer_command='composer'

" Javascript config -----------------------
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" Flow config - choose local flow if available
function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

if g:flow_path != 'flow not found'
  let g:deoplete#sources#flow#flow_bin = g:flow_path
endif
" End flow config -------------------------
" End javascript config

" Neosnippet config -----------------------
let g:neosnippet#snippets_directory='~/.config/nvim/bundle/repos/github.com/Shougo/neosnippet-snippets/neosnippets'
imap <C-e>     <Plug>(neosnippet_expand_or_jump)
smap <C-e>     <Plug>(neosnippet_expand_or_jump)
xmap <C-e>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

set conceallevel=0

