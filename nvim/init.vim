set encoding=utf-8

" Setup Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect("bundle/{}")

" Setup airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Setup CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
map <C-y> :CtrlPCmdPalette<CR>

" Solarized
set number
set background=dark
colorscheme solarized
let g:airline_theme='powerlineish'

" NERDTree
" map <C-e> :NERDTreeToggle<CR>
map <C-e> <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1

" BufferList
map <silent> <C-o> :call BufferList()<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Javascript and JSX/flow
let g:syntastic_javascript_checkers = ['eslint', 'flow']
let g:flow#enable = 0

" PHP
let g:syntastic_php_phpcs_args='--standard=PSR2'
let g:phpcomplete_index_composer_command='composer'
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_codecoverage_autorun = 1
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

" Easy buffer switch
map <S-Up> <C-w><Up>
map <S-Down> <C-w><Down>
map <S-Right> <C-w><Right>
map <S-Left> <C-w><Left>

" Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
set list listchars=tab:→\ ,trail:·
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black

" Misc
syntax on
filetype off
filetype plugin indent on
set colorcolumn=80
let mapleader=","

" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
noremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

" Gitgutter highlights
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0"
let g:syntastic_aggregate_errors = 1
let g:syntastic_id_checkers = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_enable_balloons = 1
let g:syntastic_echo_current_error = 1

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

let g:deoplete#enable_at_startup = 1
