autocmd WinEnter * set cursorline  
autocmd WinLeave * set nocursorline

function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction

nnoremap <silent> <C-c><C-y> :call ToggleConcealLevel()<CR>

let g:deoplete#enable_at_startup = 1
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0  nonumber norelativenumber
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler  number


autocmd BufWinEnter *.tex set ft=tex
autocmd BufWinEnter *.py set makeprg=python\ %
autocmd BufWinEnter *.full set ft=cfull

let g:fzf_colors = { 'bg+': ['bg', 'Normal'] }
let g:vimtex_fold_enabled =1

filetype off
call plug#begin('~/.config/nvim/plugged')

" Plug 'vim-latex/vim-latex'
" Plug 'dpo/ampl-mode'
Plug 'pbogut/fzf-mru.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'khzaw/vim-conceal'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'lervag/vimtex'
Plug 'easymotion/vim-easymotion'
Plug  'lilydjwg/colorizer', {'on':'ColorToggle'}
Plug 'zchee/deoplete-clang', {'for' : ['c', 'cpp']}
Plug 'sheerun/vim-polyglot'
" Plug 'maxmellon/vim-jsx-pretty', {'for' : 'javascript'}
"Plug 'mxw/vim-jsx'
Plug 'Shougo/deoplete.nvim'
Plug 'sjl/gundo.vim', {'on' : 'GundoToggle'}
Plug 'blindFS/vim-colorpicker', {'on' : 'ColorPicker'}
Plug 'tpope/vim-vinegar'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'dhruvasagar/vim-zoom'
Plug 'junegunn/fzf.vim'
Plug 'carlitux/deoplete-ternjs', {'for' : 'javascript'}
Plug 'deoplete-plugins/deoplete-jedi', {'for':'python'}
Plug 'w0rp/ale'
Plug 'honza/vim-snippets'
Plug 'dart-lang/dart-vim-plugin'
Plug 'SirVer/ultisnips'
Plug 'rstacruz/sparkup' 
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
call plug#end()
filetype plugin indent on


colorscheme gruvbox
set expandtab ts=2 sw=2  
set completeopt-=preview
set foldmethod=manual
set noswapfile cursorline
set rnu nowrap nu 
set spelllang=pt
set splitright
set foldlevel=10
set clipboard=unnamedplus
set hidden cc=80 
set smartcase ignorecase nohlsearch
" set list listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:~,precedes:«,extends:»
set undofile undodir="~/.config/nvim/stuff/undo"
" set synmaxcol=128
	

let mapleader = " "
let g:ale_sign_error = '●'
let g:ale_lint_on_text_changed='never'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0
nmap s <Plug>(easymotion-overwin-f2)
let g:plug_threads=32
let g:ale_fix_on_save=1
let g:ale_fix_on_enter=1
let g:ale_fix_on_insert_leave=1
let g:ale_fix_on_text_changed=1
let g:polyglot_disabled = ['latex']
let g:netrw_banner = 0
let g:netrw_hide = 1
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+' 
let g:netrw_liststyle = 3
let g:netrw_preview = 1
let g:netrw_altv = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:UltiSnipsJumpForwardTrigger = "½"
let g:UltiSnipsExpandTrigger="<C-q>"
let g:gundo_right = 1
let g:ulti_expand_or_jump_res = 0
let g:fzf_action = {
  \ 'ctrl-space': 'tab split',
  \ '½': 'split',
  \ 'tab': 'vsplit' }



tnoremap <Esc> <C-\><C-n>:q!<CR>
imap kj <esc>
nmap<F10> :!pdflatex % && zathura "'%:r'.pdf"
imap <C-left> <esc>mm[s1z=`ma
nmap <C-left> <esc>mm[s1z=`ma
imap ħ <C-o>h
imap º <C-o>j
imap ĸ <C-o>k
imap ł <C-o>l
imap ² <C-o>b
imap ¼ <C-o>cc
imap ß <C-o>s
imap ¡ <C-o>I
imap ø <C-o>o
imap → <C-o>O
imap ⅞ <C-o>A
imap ” <C-o>w
imap € <C-o>e
imap ¬ <C-o>ci'
imap ª <C-o>ci(
imap đ <C-o>ciw   
imap <F5> <esc>:w<CR>:make
nmap <F5> :w<CR>:make  
tnoremap <Esc> <C-\><C-n>
nnoremap j gj
nnoremap k gk
nnoremap <leader>t :Locate<CR>
nmap <F4> :ColorPicker<CR>
imap <F4> <esc>:ColorPicker<CR>
nnoremap <Enter> :FZFMru<CR>
nnoremap <leader>b :BLines<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>d :new <c-r>=expand("%:p:h")<CR>/
nnoremap <leader>s :FZFNeigh<CR>
nnoremap ½ :Ex<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>a :Ag<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <C-k> :m .+1<CR>==
nnoremap <C-j> :m .-2<CR>==
inoremap <C-h> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-j> :m '>+1<CR>gv=gv
nnoremap <leader><Tab> :Buffers<CR>
nnoremap <Tab>  <C-w><C-w>
nnoremap ½h <C-w>H
nnoremap ½j <C-w>J
nnoremap ½k <C-w>K
nnoremap ½l <C-w>L
nnoremap ħ <C-w>h
nnoremap º <C-w>j
nnoremap ĸ <C-w>k
nnoremap ł <C-w>l
nnoremap <bs> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction

function! s:fzf_neighbouring_files()
  let current_file =expand("%")
  let cwd = fnamemodify(current_file, ':p:h')
  let command = 'ag -g "" -f ' . cwd . ' --depth 0'

  call fzf#run(fzf#wrap({
        \ 'source': command,
        \ 'options': '-m -x +s',
        \ 'window':  'enew' }))
endfunction

command! FZFNeigh call s:fzf_neighbouring_files()

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

autocmd BufWritePost init.vim source %
autocmd BufWinEnter *.tex set ft=tex
	function! s:ch(w)
  
    let path = trim(a:w)
 
    let sty = path.'/index.js'
    let ind = path.'/styles.js'
  
    let bi = bufwinnr(ind)
    let bs = bufwinnr(sty)

    silent  :only
      
      if empty(glob(ind))
        silent exe '!cp ~/.config/nvim/templates/react.style ' ind
      endif

    
      if empty(glob(sty))
        silent exe '!cp ~/.config/nvim/templates/react.index ' sty
      endif

     if(bi == -1 && bs == -1)
       silent exe  'e ' ind 
       silent exe 'vsplit ' sty
     elseif(bi == -1 && bs > 0)
       silent exe 'e ' ind 
       silent exe 'sbuffer ' bs
     elseif(bi > 0 && bs == -1)
       silent exe 'file ' bi 
       silent exe 'vsplit ' sty
     else
       silent exe 'file ' bi 
       silent exe 'sbuffer' bs
       echom 'nim'
     endif
	endfunction

  function s:MKDir(...)
    let p = 'src/components/' . a:1 
  silent  exe '!mkdir ' . p . '/'
    silent call s:ch(p)
  endfunction
command -bang -bar -nargs=? -complete=file E :call s:MKDir(<f-args>) 



  nmap <silent> <leader>n :call fzf#run(fzf#wrap({
	\'source': 'find src -type d',
	\'sink': 	function('<sid>ch')  
  \}))<cr>


  call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
  

hi Normal ctermbg=none
hi NonText cterm=none ctermfg=190 ctermbg=none
hi CursorLine ctermbg=233 cterm=none
hi CursorLineNr ctermfg=190 ctermbg=233

hi StatusLineNC ctermbg=234 ctermfg=244
hi StatusLine ctermbg=234 ctermfg=190 cterm=bold

hi LineNr ctermbg=233
hi ErrorMsg ctermfg=214 ctermfg=none
hi WarningMsg ctermfg=214 ctermfg=none
hi WildMenu ctermbg=244 ctermfg=232
hi fzf2 ctermbg=232
" hi Include ctermfg=46
" hi Statement ctermfg=45
hi fzf1 ctermbg=232
hi fzf3 ctermbg=232
hi VertSplit ctermfg=245 ctermbg=233
hi Folded ctermbg=233 ctermfg=245
hi SignColumn ctermbg=none
hi ColorColumn ctermbg=none ctermfg=1 cterm=bold
hi SpellBad cterm=underline ctermbg=none ctermfg=none
hi SpellCap ctermbg=none
hi CursorLineNr ctermbg=233

augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" if has("nvim")
"   au TermOpen * tnoremap <Esc> <c-\><c-n>
"   au FileType fzf tunmap <Esc>
" endif

tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

augroup sparkup_types
  " Remove ALL autocommands of the current group.
  autocmd!
  " Add sparkup to new filetypes
  autocmd FileType mustache,php,javascript,jsx runtime! ftplugin/html/sparkup.vim
augroup END
