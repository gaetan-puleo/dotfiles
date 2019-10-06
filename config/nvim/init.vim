"
"  NVIM CONFIG Version 0.1.0
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""

"
"   Config
"
"""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " vi Improved on

" enable mouse
set mouse=a

"disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

"set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

"set tw=79

" set dark theme
"set background=dark
set encoding=UTF-8

filetype plugin on
filetype plugin indent on

"enable color Highlighting
syntax enable

"disable swap and backup files
set noswapfile
set nobackup
set nowb

"One tab is 2 spaces
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set smartindent
" Set floating window to be slightly transparent
set winbl=10
" disable bell
set belloff=all
" show line number
set number

" use local tags directory
set tags=./tags;

set showmatch     " set show matching parenthesis

set ignorecase    " ignore case when searching

set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set updatetime=1000             " Speed up the updatetime so gitgutter and friends are quicker
set winhl=Normal:GroupWithFgColor

" Make the keyboard faaaaaaast
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50

let mapleader = ","

set clipboard+=unnamedplus

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
set splitbelow
set splitright

hi VertSplit ctermbg=NONE guibg=NONE

"
" Keyboard
"
"""""""""""""""""""""""""""""""""""""""""""""""""""
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

" tab and antitab key
"inoremap <TAB> <C-T>
":inoremap <S-TAB> <C-D>



"clear highlight
"
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
map <esc> :noh<cr>

" open new tab
map <C-w> :tab split<CR>

noremap <C-u> :UndotreeToggle<CR>

"Delete to the end of line
nnoremap D d$

" Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Select all text
map <C-a> <esc>ggVG<CR>

"jsdoc
"nmap <C-j> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)

" open files
map <C-f> <plug>NERDTreeTabsToggle<CR>
map <Leader>p :Files<CR>
map <Leader>f :Rg<CR>
map <Leader>b :Buffers<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:set dictionary="/usr/dict/words"

" vim commentary
xmap cc  <Plug>Commentary
vmap cu  <Plug>Commentary
nmap cu  <Plug>Commentary
omap cu  <Plug>Commentary
nmap cu <Plug>CommentaryLine


if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd nvim +'PlugInstall --sync' +qa
endif


nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" tap indent movement (use mark `m' for cursor position)
vmap <Tab> >gv
vmap <S-Tab> <gv

call plug#begin('~/.local/share/nvim/plugged')
Plug 'janko/vim-test'

"Must be on all .vimrc file
Plug 'tpope/vim-sensible'

" undo history tab
Plug 'mbbill/undotree'

"show git status line by line
Plug 'mhinz/vim-signify'

" linter wrapper
Plug 'w0rp/ale'

" Add a status bar
Plug 'itchyny/lightline.vim'

" linter wrapper for lightlane
Plug 'maximbaz/lightline-ale'

"git branch function
Plug 'itchyny/vim-gitbranch'

" autoreload files
Plug 'djoshea/vim-autoread'

"fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"JS color syntaxes
Plug 'pangloss/vim-javascript'

"better jsx syntax
Plug 'maxmellon/vim-jsx-pretty'

"Nerdtree plugins (have a side file tree like in vscode)
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'weynhamz/vim-plugin-nerdtree-tabs'

" autocomplete core
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" comment
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'

" for test but must be tested first
Plug 'janko/vim-test'

" show indentations
Plug 'Yggdroot/indentLine'
" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'

" React code snippets
Plug 'mlaursen/vim-react-snippets'

"snippets core
Plug 'SirVer/ultisnips'

" bufferline
Plug 'mgee/lightline-bufferline'
" theme
Plug 'joshdick/onedark.vim'
" better modal for neovim 0.4.x
Plug 'ncm2/float-preview.nvim'
" buffer tabs
" Plug 'ap/vim-buftabline'

Plug 'ap/vim-buftabline'
" auto pair quotes, brackets etc...
Plug 'jiangmiao/auto-pairs'
" notifications on side
Plug 'wsdjeg/notifications.vim'
" icons
Plug 'ryanoasis/vim-devicons'

call plug#end()

"
"   Plugin config
"
""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set background=dark
colorscheme onedark
" syntax enable
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="mirage"   " for dark version of theme
" colorscheme nord

" ALE
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~80%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
" fzf
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden -g ""'

command! -bang -nargs=* Ls  
      \ call fzf#run(fzf#wrap({'source': 'ls -a'}))


" Lightline
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ }
"linter
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }


let g:lightline.active.right = [['lineinfo'], ['percent'], ['fileformat', 'fileencoding'],[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]]


let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

" git signify
"
let g:signify_line_highlight = 0
let g:signify_sign_add               = '✚'
let g:signify_sign_delete            = '✖'
let g:signify_sign_delete_first_line = '✖'
let g:signify_sign_change            = '◉'
let g:signify_sign_changedelete = g:signify_sign_change

" let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 0 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 0 " highlights the folder name

" " you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

 let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
 let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

 let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
 let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

 let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
 let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:NERDTreeHighlightCursorline = 0
:hi Directory guifg=#FFFFFF ctermfg=white

let NERDTreeShowHidden=1


let NERDTreeAutoDeleteBuffer = 1

let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:airline_powerline_fonts = 1

set encoding=utf-8
scriptencoding utf-8
:set guifont=*

let g:float_preview#docked = 1



" Reverse the layout to make the FZF list top-down
let $FZF_DEFAULT_OPTS='--layout=reverse'

" Using the custom window creation function
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

" Function to create the custom floating window
function! FloatingFZF()
  " creates a scratch, unlisted, new, empty, unnamed buffer
  " to be used in the floating window
  let buf = nvim_create_buf(v:false, v:true)

  " 90% of the height
  let height = float2nr(&lines * 0.9)
  " 60% of the height
  let width = float2nr(&columns * 0.6)
  " horizontal position (centralized)
  let horizontal = float2nr((&columns - width) / 2)
  " vertical position (one line down of the top)
  let vertical = 1

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height
        \ }

  " open the new window, floating, and enter to it
  call nvim_open_win(buf, v:true, opts)
endfunction


" Dim inactive windows using 'colorcolumn' setting
" This tends to slow down redrawing, but is very useful.
" Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
" XXX: this will only work with lines containing text (i.e. not '~')
" from 
if exists('+colorcolumn')
  function! s:DimInactiveWindows()
    for i in range(1, tabpagewinnr(tabpagenr(), '$'))
      let l:range = ""
      if i != winnr()
        if &wrap
         " HACK: when wrapping lines is enabled, we use the maximum number
         " of columns getting highlighted. This might get calculated by
         " looking for the longest visible line and using a multiple of
         " winwidth().
         let l:width=256 " max
        else
         let l:width=winwidth(i)
        endif
        let l:range = join(range(1, l:width), ',')
      endif
      call setwinvar(i, '&colorcolumn', l:range)
    endfor
  endfunction
  augroup DimInactiveWindows
    au!
    au WinEnter * call s:DimInactiveWindows()
    au WinEnter * set cursorline
    au WinLeave * set nocursorline
  augroup END
endif

hi LineNr guibg=bg
set foldcolumn=0
hi foldcolumn guibg=bg
hi VertSplit guibg=bg guifg=#37474F
" :set fillchars+=vert:\ 
