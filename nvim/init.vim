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

    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('nathanaelkane/vim-indent-guides')

    " Dev tools
    call dein#add('rking/ag.vim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('shumphrey/fugitive-gitlab.vim')
    call dein#add('scrooloose/nerdcommenter')
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
    call dein#add('janko-m/vim-test')
    call dein#add('tpope/vim-dispatch')
    call dein#add('junegunn/vim-slash')
    call dein#add('itchyny/lightline.vim')
    call dein#add('daviesjamie/vim-base16-lightline')
    call dein#add('mattboehm/vim-unstack')
    call dein#add('mattn/emmet-vim')
    " call dein#add('christoomey/vim-tmux-navigator')

    " Ops tools
    call dein#add('hashivim/vim-terraform')
    call dein#add('juliosueiras/vim-terraform-completion')

    " Doc tools
    call dein#add('aklt/plantuml-syntax')
    call dein#add('aklt/plantuml-syntax')
    call dein#add('scrooloose/vim-slumlord')
    call dein#add('junegunn/goyo.vim')
    call dein#add('junegunn/limelight.vim')
    "call dein#add('plasticboy/vim-markdown')

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
    call dein#add('fisadev/vim-isort')
    call dein#add('numirias/semshi', {'do': ':UpdateRemotePlugins'})

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
    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
    "call dein#add('ctrlpvim/ctrlp.vim')
    call dein#add('editorconfig/editorconfig-vim')
    call dein#add('easymotion/vim-easymotion')
    call dein#add('tpope/tpope-vim-abolish')
    call dein#add('guns/xterm-color-table.vim')

    " Syntax plugins
    call dein#add('jwalton512/vim-blade')
    call dein#add('digitaltoad/vim-pug')
    call dein#add('lepture/vim-jinja')

    " Aestethics
    call dein#add('chriskempson/base16-vim')
    call dein#add('altercation/vim-colors-solarized')
    call dein#add('Ardakilic/vim-tomorrow-night-theme')

    " You can specify revision/branch/tag.
    call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

    call dein#end()
    call dein#save_state()
endif

" If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif
" End dein Scripts-------------------------


" Required:
filetype plugin indent on

let mapleader = "\<Space>"
" Python config ---------------------------
let g:python_host_prog = '/home/j/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/j/.pyenv/versions/neovim3/bin/python'
" Jedi
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures_delay = 2000
let g:jedi#smart_auto_mappings = 0
" Tests
" let test#strategy = 'neovim'
let test#python#runner = 'pytest'
let test#python#pytest#options = '-vv --pdb -x'
nnoremap <silent> <leader>tn :TestNearest<CR>
nnoremap <silent> <leader>tf :TestFile<CR>
nnoremap <silent> <leader>ts :TestSuite<CR>
nnoremap <silent> <leader>tt :TestLast<CR>
nnoremap <silent> <leader>tv :TestVisit<CR>
if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

" Black
nnoremap <silent> <leader>bb mxgggqG`xzx
" isort
let g:vim_isort_map = '<C-i>'

" C/C++ config ----------------------------
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang/3.9.1/include"

" Neomake ---------------------------------
autocmd! BufWritePost * Neomake

" let g:neomake_open_list = 2
let g:neomake_list_height = 5
" python config
let g:neomake_python_enabled_makers = ['flake8']

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
let g:deoplete#auto_complete_delay=100
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Neosnippet ------------------------------
let g:neosnippet#enable_snipmate_compatibility = 1

" Editor ----------------------------------
set colorcolumn=120
set foldopen-=block
set expandtab
set tabstop=4
set shiftwidth=4
set listchars=tab:>⟶
set hidden
set conceallevel=0
" autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
" autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
" autocmd Filetype html setlocal ts=2 sts=2 sw=2
" autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
nnoremap <leader>v :b #<CR>

let g:limelight_conceal_ctermfg = 'LightGrey'
nnoremap <leader>f :Goyo<CR>:Limelight!! 0.5<CR>

hi ExtraWhitespace ctermbg=red guibg=red
" needs to be put before setting a colorscheme
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

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

" Nerd commenter --------------------------

" Nerd tree -------------------------------
nnoremap <Tab> :NERDTreeToggle<CR>

" FZF config
nnoremap <C-p> :Files<CR>
nnoremap <M-Return> :Tags<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Search (vim-slash)
"noremap <plug>(slash-after) zz
if has('timers')
    noremap <expr> <plug>(slash-after) 'zz'.slash#blink(2, 50)
endif

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


" PHP config ------------------------------
let g:phpcomplete_index_composer_command='composer'

" Javascript config -----------------------
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1
" End javascript config

" Neosnippet config -----------------------
let g:neosnippet#snippets_directory='~/.config/nvim/bundle/repos/github.com/Shougo/neosnippet-snippets/neosnippets'
imap <C-e>     <Plug>(neosnippet_expand_or_jump)
smap <C-e>     <Plug>(neosnippet_expand_or_jump)
xmap <C-e>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" git
let g:gitgutter_max_signs=100000

" tmux
" let g:tmux_navigator_no_mappings = 1
" let g:tmux_navigator_disable_when_zoomed = 1

" nnoremap <silent> <A-j> :TmuxNavigateLeft<cr>
" nnoremap <silent> <A-k> :TmuxNavigateDown<cr>
" nnoremap <silent> <A-l> :TmuxNavigateUp<cr>
" nnoremap <silent> <A-;> :TmuxNavigateRight<cr>
" nnoremap <silent> <A-\> :TmuxNavigatePrevious<cr>

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

" colorscheme
set background=light
set t_Co=256
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

let g:lightline = {'colorscheme': 'base16'}

function! MyCustomHighlights()  " colors are inverted because of base16-shell
    hi semshiUnresolved ctermfg=black ctermbg=yellow
    hi semshiParameterUnused ctermfg=91 ctermbg=122
    hi semshiImported ctermfg=208 cterm=bold
    hi semshiAttribute ctermfg=cyan cterm=bold
    hi semshiSelf ctermfg=72
    hi semshiSelected ctermfg=231 ctermbg=214 cterm=bold

    hi pythonComment ctermfg=196 ctermbg=223
    " hi pythonString ctermfg=22 ctermbg=193

    hi Folded ctermfg=white
    hi NeomakeError ctermfg=white ctermbg=216
    " hi FoldedColumn ctermfg=black
    " hi VertSplit ctermbg=white ctermfg=black
    hi IncSearch ctermfg=231 ctermbg=214 cterm=bold
    hi Search ctermfg=231 ctermbg=214 cterm=bold
    hi MatchParen ctermbg=165 ctermfg=black
    " hi Todo ctermfg=11 ctermbg=black
endfunction

autocmd Filetype python call MyCustomHighlights()
autocmd ColorScheme * call MyCustomHighlights()

hi ExtraWhitespace ctermbg=red guibg=red
" needs to be put before setting a colorscheme
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" environment related config
source ~/.config/nvim/environment.vim
