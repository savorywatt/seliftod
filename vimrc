set nocompatible
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" start vundle
Bundle 'gmarik/vundle'

" My bundles
"Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-unimpaired'
Bundle 'ervandew/supertab'
"Bundle 'sjl/gundo.vim'
"Bundle 'reinh/vim-makegreen'
"Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
"Bundle 'Townk/vim-autoclose'
"Bundle 'vim-scripts/Rainbow-Parenthesis'
"Bundle 'kien/ctrlp.vim'
"Bundle 'benmills/vimux'
"Bundle 'vim-scripts/ZoomWin'
"Bundle 'vim-scripts/Jinja'
"Bundle 'vim-scripts/TaskList.vim'
"Bundle 'rizzatti/funcoo.vim'
"Bundle 'rizzatti/dash.vim'

" Nerdtree
"Bundle 'vim-scripts/The-NERD-tree'

" Multiple Cursors
Bundle 'terryma/vim-multiple-cursors'

" Markdown
Bundle 'tpope/vim-markdown'

" Git
Bundle 'tpope/vim-fugitive'
"Bundle 'gregsexton/gitv'
"Bundle 'git@github.com:airblade/vim-gitgutter.git'

" Language-spec
Bundle 'klen/python-mode'
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'elzr/vim-json'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'robertkluin/vim-handy-highlights'
Bundle 'jeroenbourgois/vim-actionscript'

Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
Bundle 'vim-scripts/paredit.vim'
Bundle 'vim-scripts/VimClojure'

" RUST
Bundle 'wting/rust.vim'

" GOLANG
"Bundle 'dgryski/vim-godef'
"set rtp+=/usr/local/go/misc/vim
"autocmd FileType go autocmd BufWritePre <buffer> Fmt
"nmap <F4> :TagbarToggle<CR>
"" Need to make sure bash_profile as GOROORT set to HOME/go
"" go get -v code.google.com/p/rog-go/exp/cmd/godef
"" go install -v code.google.com/p/rog-go/exp/cmd/godef
"let g:godef_split=0
"let g:godef_same_file_in_same_window=1
Bundle 'fatih/vim-go'
" Add golint command to vim as :Lint
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

filetype plugin indent on

" The basics
syntax on
set showcmd
set hidden
set cursorline
set ruler
set backspace=2
set number
set laststatus=2
set history=1000
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set dictionary=/usr/share/dict/words
set mouse=a

set wildmode=longest:full
set wildmenu

" TABS, SPACING
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set textwidth=80
set colorcolumn=80

" backups
"set backup
"set noswapfile
"set undolevels=999
"set undofile
"set undoreload=10000
"set undodir=/var/tmp/vim/undo//     " undo files
"set backupdir=/var/tmp/vim/backup// " backups
"set directory=/var/tmp/vim/swap//   " swap files

set hlsearch

" KEY REMAPPING

" leader
let mapleader = ","
let maplocalleader = "\\"

" Made D behave
nnoremap D d$

" It's 2011.
noremap j gj
noremap k gk

" Destroy infuriating keys
" Fuck you, help key.
noremap  <F1> :set invfullscreen<CR>
inoremap <F1> <ESC>:set invfullscreen<CR>a

" Fuck you too, manual key.
nnoremap K <nop>

" Stop it, hash key.
inoremap # X<BS>#

" Less chording
map ; :
noremap ;; ;

" Faster Esc
inoremap jj <esc>

" toggle current column highlight shortcut
map <leader>c :set cursorcolumn!<cr>

" Gundo
nnoremap <leader>g :GundoToggle<CR>

" toggle between relative and absolute line numbers.
map <leader>l :exec "set " &nu ? "rnu": "nu"<cr>

" toggle paste mode.
map <leader>e :set paste!<CR>

" toggle spell mode.
map <leader>p :set spell!<cr>


" SEARCHING
" Keep search matches in the middle of the window and pulse the line when moving
" to them.
nnoremap / /\v
vnoremap / /\v
" remove highlighting by pressing enter
nnoremap <C-r> :noh<C-r><C-r>

" Search for selected word
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>


" Moving around
" quick buffer list
:nnoremap <C-t> :buffers<CR>:buffer<Space>

if has("autocmd")
    " Enable file type detection
    filetype on

    " Turn spellcheck on for gitcommit by default.
    autocmd FileType gitcommit set spell

    " mako syntax highlighting
    autocmd BufRead *.mako set filetype=mako

    " make jinja, jst, and handlebars templates use html syntax highlighting
    autocmd BufRead *.jinja,*.jst,*.handlebars,*.mustache set filetype=html

    " Set html, coffee, and javascript indent depths to 2-space.
    autocmd FileType coffee,html,javascript,mako.yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2

    " Flex syntax highlighting
    autocmd BufRead *.as set filetype=actionscript
    autocmd BufRead *.mxml set filetype=mxml

    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab

    " Customisations base on preference
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType less setlocal ts=2 sts=2 sw=2 expandtab
    
    " Flex syntax highlighting
    autocmd BufRead *.as set filetype=actionscript
    autocmd BufRead *.mxml set filetype=mxml

    " Clojure
    au BufNewFile,BufRead *.cljs set filetype=clojure
endif

" EDITING"
" **************************************************
"au BufWritePost *.go,*.c,*.cpp,*.h silent! !ctags -R &

" auto complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType mustache set omnifunc=htmlcomplete#CompleteTags
autocmd FileType mako set omnifunc=htmlcomplete#CompleteTags
autocmd FileType jst set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Completej
set completeopt=menuone


" Substitute
nnoremap <leader>s :%s//<left>

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" FILE MANAGEMENT
" ***************************************************

" wild menu
set wildignore+=*.py[co]                         " Python byte code

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Make leader leader switch between last 2 buffers
nnoremap <leader><leader> <c-^>

" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
noremap <leader>v <C-w>v


" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" COLOR SCHEME
syntax on
set background=dark
colorscheme molokai
set t_Co=256

hi Normal ctermbg=235
hi NonText ctermbg=235
"hi Statement ctermbg=235
hi Visual ctermbg=60
hi StatusLine ctermfg=246 ctermbg=234
hi StatusLineNC ctermfg=238 ctermbg=187
hi Todo ctermfg=30
hi Exception ctermfg=187 ctermbg=235

" highlight groups
hi CursorLine  cterm=NONE ctermbg=236
hi CursorColumn  cterm=NONE ctermbg=236
hi ColorColumn  cterm=NONE ctermbg=232



" ABBREVATIONS AND SPELLING
abbr teh the
abbr nad and
abbr adn and
abbr becasue because
abbr becuase because
abbr taht that
abbr refactor reorganize
abbr prase parse
abbr sefl self
abbr pathc patch
abbr udpate update

" PLUGINS

" Task list
map <leader>td <Plug>TaskList


" Control P
" *****************************************************************************
" *****************************************************************************
let g:ctrlp_cmd = 'CtrlPMixed'                        " search anything (in files, buffers and MRU files at the same time.)
let g:ctrlp_working_path_mode = 'ra'        " search for nearest ancestor like .git, .hg, and the directory of the current file
let g:ctrlp_match_window_bottom = 0                " show the match window at the top of the screen
"let g:ctrlp_by_filename = 1
let g:ctrlp_max_height = 10                                " maxiumum height of match window
"let g:ctrlp_switch_buffer = 'et'                " jump to a file if it's open already
let g:ctrlp_use_caching = 1                                " enable caching
let g:ctrlp_clear_cache_on_exit=0                  " speed up by not removing clearing cache evertime
let g:ctrlp_mruf_max = 250                                 " number of recently opened files
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|build)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }

" TODO: add javascript and some other languages who doesn't have ctags support
" coffee: https://gist.github.com/michaelglass/5210282
" go: http://stackoverflow.com/a/8236826/462233 
" objc:  http://www.gregsexton.org/2011/04/objective-c-exuberant-ctags-regex/
" rust: https://github.com/mozilla/rust/blob/master/src/etc/ctags.rust
let g:ctrlp_buftag_types = {
\ 'go'                : '--language-force=go --golang-types=ftv',
\ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
\ 'markdown'   : '--language-force=markdown --markdown-types=hik',
\ 'objc'       : '--language-force=objc --objc-types=mpci',
\ 'rc'         : '--language-force=rust --rust-types=fTm'
\ }
" *****************************************************************************
" *****************************************************************************


" Fugitive
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%{fugitive#statusline()}\    " Git branch
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset


" NERD Tree
map <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>
"inoremap <F2> <esc>:NERDTreeToggle<cr>

au Filetype nerdtree setlocal nolist

let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['.vim$', '.*\.pyc$']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeWinSize = 30


" Searching
let g:gitgreprg="grep\\ -n\\ -R\\ --exclude='*.{xml}'"
let g:gitgrepprg="grep\\ -n\\ -R\\ --include='*.py'"
let g:gitgrepprgclass="grep\\ -n\\ -R\\ --include='*.py'\\ class\\"
let g:gitgrepprgfunction="grep\\ -n\\ -R\\ --include='*.py\\ def\\'"

function! GitGrep(args)
    redraw
    echo "Searching..."
    let grepprg_bak=&grepprg
    exec "set grepprg=" . g:gitgreprg
    execute "silent! grep " . a:args . " *"
    let &grepprg=grepprg_bak
    botright copen
    redraw!
endfunction
command! -nargs=* -complete=file G call GitGrep(<q-args>)

function! GitGrepClass(args)
    redraw
    echo "Searching..."
    let grepprg_bak=&grepprg
    exec "set grepprg=" . g:gitgrepprgclass
    execute "silent! grep " . a:args . " *"
    let &grepprg=grepprg_bak
    botright copen
    redraw!
endfunction
command! -nargs=* -complete=file Gc call GitGrepClass(<q-args>)

function! GitGrepFunction(args)
    redraw
    echo "Searching..."
    let grepprg_bak=&grepprg
    exec "set grepprg=" . g:gitgrepprgfunction
    execute "silent! grep " . a:args . " *"
    let &grepprg=grepprg_bak
    botright copen
    redraw!
endfunction
command! -nargs=* -complete=file Gf call GitGrepFunction(<q-args>)

function! GitGrepWord()
    normal! "zyiw
    call GitGrep(getreg('z'))
endfunction
nmap <leader>gw :call GitGrepWord()<CR>"

" LANGUAGE STUFF

augroup ft_python
    au!

    au FileType python setlocal omnifunc=pythoncomplete#Complete

    " Flake 8

    let g:syntastic_python_checkers=['flake8']
    let g:syntastic_python_flake8_args='--ignore=W391'
    au FileType python nnoremap <leader>s :SyntasticCheck<CR>
    au FileType python nnoremap zj :lnext<CR>zz
    au FileType python nnoremap zk :lprev<CR>zz

    " Python
    " Rope
    let g:pymode_folding=0
    let g:pymode_lint_ignore = "W391"
    let g:pymode_lint = 0
    let g:pymode_lint_cwindow = 0
    let g:pymode_run = 0

    "let g:pymode_rope_guess_project = 0

    " Pyflakes
    let g:pyflakes_use_quickfix = 1

    " Full python syntax highlighting
    let python_highlight_all=1

    " Makegreen
    au FileType python map <localleader>t :call MakeGreen()<cr>
    au FileType python let g:makegreen_stay_on_file=1
    "autocmd BufNewFile,BufRead *.py compiler nose
    " For now set all tests to nose. But we'll probably want something better long
    " term. Like using a make file...
    au FileType python autocmd BufNewFile,BufRead *.* compiler nose

augroup END

augroup ft_go
    au!

    " Import package under cursor.
    au FileType go nmap <Leader>i <Plug>(go-import)

    " Open Godoc for word.
    "au FileType go nmap <Leader>d <Plug>(go-doc)
    au FileType go nmap <C-c>d <Plug>(go-doc)

    " Run go <command>
    au FileType go nmap <localleader>r <Plug>(go-run)
    au FileType go nmap <localleader>b <Plug>(go-build)
    au FileType go nmap <localleader>t <Plug>(go-test)

    " Goto declaration for word under cursor.
    "au FileType go nmap gd <Plug>(go-def)
    au FileType go nmap <C-c>g <Plug>(go-def)

    " Open declaration for word under curos in split, vertical, tab
    au FileType go nmap <C-c>gs <Plug>(go-def-split)
    au FileType go nmap <C-c>gv <Plug>(go-def-vertical)
    au FileType go nmap <C-c>gt <Plug>(go-def-tab)

augroup END


" Environments GUI
if has('gui_running')
    "set guifont=Inconsolota:h11
    set guifont=Inconsolota-dz for Pow:h11

    set guicursor=n-c:block-Cursor-blinkon0
    set guicursor+=v:block-vCursor-blinkon0
    set guicursor+=i-ci:ver20-iCursor
else
    " Non-MacVim GUI, like Gvim
    hi ColorColumn ctermbg=0 guibg=#1c1c1c
    hi CursorLine ctermbg=236 guibg=#DDDDDD

    hi Normal guibg=#cccccc ctermbg=233
    hi NonText guibg=#cccccc ctermbg=233

    " Vim TMUx
    map <Leader>rp :VimuxPromptCommand <CR>
    " Run last command executed by RunVimTmuxCommand
    map <Leader>rl :RunLastVimTmuxCommand<CR>
    " Inspect runner pane
    map <Leader>ri :InspectVimTmuxRunner<CR>

    let VimuxHeight = "28"
    let VimuxUseNearestPane = 1
    let g:VimuxOrientation = "h"
endif
