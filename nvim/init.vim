"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.confing/nvim/bundle'))
    call dein#begin(expand('~/.config/nvim/bundle'))

    " Let dein manage dein
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/vimproc.vim', {'build': 'make'})

    " Add or remove your plugins here:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('mattn/emmet-vim')

    call dein#add('nathanaelkane/vim-indent-guides')

    " Dev tools
    call dein#add('rking/ag.vim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('shumphrey/fugitive-gitlab.vim')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('itchyny/lightline.vim')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('gregsexton/gitv')
    call dein#add('tpope/vim-surround', {'on_map': {'n': ['cs', 'ds', 'ys']}})
    call dein#add('tpope/vim-repeat', {'on_map': {'n': ['.']}})
    call dein#add('tpope/vim-unimpaired', {'on_map': {'n': ['[a', ']a', '[A', ']A', '[b', ']b', '[B', ']B', '[l', ']l', '[L', ']L', '[<C-L>', ']<C-L>', '[q', ']q', '[Q', ']Q', '[<C-Q>', ']<C-Q>', '[t', ']t', '[T', ']T']}})
    call dein#add('vim-scripts/matchit.zip', {'on_map': {'n': ['%']}})
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('majutsushi/tagbar', {'on_map': {'n': ['F8']}})
    call dein#add('tpope/vim-projectionist')
    call dein#add('jaxbot/semantic-highlight.vim')
    call dein#add('severin-lemaignan/vim-minimap')

    " Ops tools
    call dein#add('hashivim/vim-terraform')
    call dein#add('juliosueiras/vim-terraform-completion')

    " Doc tools
    call dein#add('aklt/plantuml-syntax')
    call dein#add('scrooloose/vim-slumlord')

    " C/C++
    call dein#add('zchee/deoplete-clang')
    call dein#add('octol/vim-cpp-enhanced-highlight')

    " Python
    call dein#add('zchee/deoplete-jedi')
    call dein#add('davidhalter/jedi-vim')
    call dein#add('tmhedberg/SimpylFold')
    call dein#add('Yggdroot/indentLine')
    call dein#add('vim-python/python-syntax')
    call dein#add('heavenshell/vim-pydocstring')

    " PHP
    "call dein#add('pjio/phpcomplete-extended')

    " Rust
    call dein#add('rust-lang/rust.vim')

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
    call dein#add('junegunn/fzf', { 'build': './install', 'merged': 0 })
    "call dein#add('ctrlpvim/ctrlp.vim')
    call dein#add('editorconfig/editorconfig-vim')
    call dein#add('easymotion/vim-easymotion')
    call dein#add('tpope/tpope-vim-abolish')

    " Syntax plugins
    call dein#add('jwalton512/vim-blade')
    call dein#add('digitaltoad/vim-pug')
    call dein#add('lepture/vim-jinja')

    " Aestethics
    call dein#add('chriskempson/base16-vim')
    "call dein#add('altercation/vim-colors-solarized')
    call dein#add('lifepillar/vim-solarized8')
    call dein#add('altercation/vim-colors-solarized')
    call dein#add('Ardakilic/vim-tomorrow-night-theme')

    " You can specify revision/branch/tag.
    call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on

" Python config ---------------------------
let g:python2_host_prog = '/home/j/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/j/.pyenv/versions/neovim3/bin/python'
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
" let g:neomake_open_list = 2
let g:neomake_list_height = 5

    " python config
    let g:neomake_python_enabled_makers = ['pylint']

    " javascript config
    let g:neomake_javascript_enabled_makers = ['flow','eslint']

    " rust config
    let g:neomake_rust_enabled_makers = ['cargo', 'rustc']

nmap <Leader><Space>o :lopen<CR>
nmap <Leader><Space>c :lclose<CR>
nmap <Leader><Space><Space> :ll<CR>
nmap <Leader><Space>n :lnext<CR>
nmap <Leader><Space>p :lprev<CR>
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
nnoremap <leader>v :b #<CR>

" Semantic Highlighting -------------------
nnoremap <leader>s :SemanticHighlightToggle<CR>
let g:semanticTermColors = [2,3,1,4,5,6,9,10,11,12,13,14,16,111,208,74,140,21,22,171,130,92]

" Split movement mappings
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Tagbar
" key-mappings:
nmap <F8> :TagbarToggle<CR>

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

" Nerd tree -------------------------------
nnoremap <Tab> :NERDTreeToggle<CR>

" FZF config
nnoremap <C-p> :FZF<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" CtrlP -----------------------------------
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|.git'

" Reselect on indentation
vnoremap > >gv
vnoremap < <gv

" Color -----------------------------------
" -- find out highlight group under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
"set background=light
"if filereadable(expand("~/.vimrc_background"))
    "let base16colorspace=256
    "source ~/.vimrc_background
"endif
hi Folded ctermfg=15
hi FoldedColumn ctermfg=15
hi Search ctermbg=gray ctermfg=white
hi VertSplit ctermbg=0 ctermfg=15
hi Search ctermbg=4 ctermfg=15
hi Todo ctermfg=11 ctermbg=15
hi ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

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

" git
let g:gitgutter_max_signs=100000

" Leader shortcuts
    " copy/paste
    vmap <Leader>y "+y
    vmap <Leader>d "+d
    nmap <Leader>p "+p
    nmap <Leader>P "+P
    vmap <Leader>p "+p
    vmap <Leader>P "+P

    " saving/opening
    nnoremap <Leader>o :FZF<CR>
    nnoremap <Leader>w :w<CR>

" config editing
command! Config :e ~/.config/nvim/init.vim
command! ReloadConfig :source ~/.config/nvim/init.vim

" environment related config
source ~/.config/nvim/environment.vim

" utility
" show highlight under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" colorscheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
