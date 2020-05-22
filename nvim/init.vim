"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" CoC pre-config
set hidden
set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300

set shortmess+=c

set signcolumn=yes
" end CoC pre-config

" Required:
call plug#begin()

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'nathanaelkane/vim-indent-guides'

" Dev tools
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
" call dein#add('Shougo/deoplete.nvim')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-surround', {'on_map': {'n': ['cs', 'ds', 'ys']}}
Plug 'tpope/vim-repeat', {'on_map': {'n': ['.']}}
Plug 'tpope/vim-unimpaired', {'on_map': {'n': ['[a', ']a', '[A', ']A', '[b', ']b', '[B', ']B', '[l', ']l', '[L', ']L', '[<C-L>', ']<C-L>', '[q', ']q', '[Q', ']Q', '[<C-Q>', ']<C-Q>', '[t', ']t', '[T', ']T']}}
Plug 'vim-scripts/matchit.zip', {'on_map': {'n': ['%']}}
Plug 'Shougo/neosnippet.vim'
Plug 'majutsushi/tagbar', {'on_map': {'n': ['F8']}}
Plug 'tpope/vim-projectionist'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'severin-lemaignan/vim-minimap'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'junegunn/vim-slash'
Plug 'itchyny/lightline.vim'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'mattboehm/vim-unstack'
Plug 'mattn/emmet-vim'
Plug 'christoomey/vim-tmux-navigator'

" Ops tools
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'

" Doc tools
Plug 'aklt/plantuml-syntax'
Plug 'aklt/plantuml-syntax'
Plug 'scrooloose/vim-slumlord'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'plasticboy/vim-markdown'

" Python
Plug 'tmhedberg/SimpylFold'
Plug 'Yggdroot/indentLine'
Plug 'vim-python/python-syntax'
Plug 'heavenshell/vim-pydocstring'
Plug 'fisadev/vim-isort'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Rust
Plug 'rust-lang/rust.vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components'
Plug 'jparise/vim-graphql'

" CSS
Plug 'ap/vim-css-color'

" Utility
Plug 'neomake/neomake'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/tpope-vim-abolish'
Plug 'guns/xterm-color-table.vim'

" Syntax plugins
Plug 'jwalton512/vim-blade'
Plug 'digitaltoad/vim-pug'
Plug 'lepture/vim-jinja'

" Aestethics
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'Ardakilic/vim-tomorrow-night-theme'

call plug#end()

" CoC Config
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" END COC CONFIG


" Required:
filetype plugin indent on

let mapleader = "\<Space>"

" Python config ---------------------------
let g:python_host_prog = '/home/j/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/j/.pyenv/versions/neovim3/bin/python'
" Jedi
" let g:jedi#completions_enabled = 0
" let g:jedi#show_call_signatures_delay = 2000
" let g:jedi#smart_auto_mappings = 0
" Tests
" let test#strategy = 'neovim'
let test#python#runner = 'pytest'
let test#python#pytest#options = '-vv -r s -x --pdb --disable-vcr'
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
" let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
" let g:deoplete#sources#clang#clang_header = "/usr/lib/clang/3.9.1/include"

" Neomake ---------------------------------
autocmd! BufWritePost * Neomake

" let g:neomake_open_list = 2
let g:neomake_list_height = 5
" python config
let g:neomake_python_enabled_makers = ['flake8']

" javascript config
"let g:neomake_javascript_enabled_makers = ['flow','eslint']

" rust config
let g:neomake_rust_enabled_makers = ['cargo', 'rustc']

nmap <Leader><Space>o :lopen<CR>
nmap <Leader><Space>c :lclose<CR>
nmap <Leader><Space><Space> :ll<CR>
nmap <Leader><Space>n :lnext<CR>
nmap <Leader><Space>p :lprev<CR>
"------------------------------------------

" Deoplete --------------------------------
" let g:deoplete#enable_at_startup=1
" let g:deoplete#auto_complete_delay=100


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

let g:lightline = {
    \ 'colorscheme': 'base16',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \           [ 'cocstatus', 'readonly', 'filename', 'modified'] ]
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status'
    \ },
    \ }

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
