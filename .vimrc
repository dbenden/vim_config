" Plug configuration
call plug#begin('~/.vim/plugged')
    " Appearance
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'   
    Plug 'vim-airline/vim-airline'
    Plug 'rafi/awesome-vim-colorschemes'
        
    " File management
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
    Plug 'davidhalter/jedi-vim'
    Plug 'neomake/neomake'
    Plug 'ervandew/supertab'
    
    " Debugger
    Plug 'puremourning/vimspector'
    " Git
    Plug 'tpope/vim-fugitive'

    " database
    Plug 'tpope/vim-dadbod'
    Plug 'kristijanhusak/vim-dadbod-ui'

    " Search
    Plug 'ctrlpvim/ctrlp.vim'
    " " Fonts
    "Plug 'ryanoasis/nerd-fonts'
    " Licenses
    Plug 'antoyo/vim-licenses'

    " AI
    "Plug 'MunifTanjim/nui.nvim'
    "Plug 'Bryley/neoai.nvim'
    Plug 'aduros/ai.vim'

call plug#end()

" Options
set encoding=utf-8
set nobackup
set nowritebackup

set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
" set cursorline
" set hidden
" set inccommand=split
" set mouse=a
set number
" set relativenumber
" set splitbelow splitright
" set title
" set ttimeoutlen=0
" set wildmenu

" Tabs size
set expandtab
set shiftwidth=4
set tabstop=4

" set signcolumn=yes
" set updatetime=300

filetype plugin indent on
syntax on

set t_Co=256

" True color if available
let term_program=$TERM_PROGRAM

" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" NERD Tree config
nnoremap <F2> :NERDTreeToggle<CR>
let NERDTReeShowHidden=1
" barbar config

" Move to previous/next
nnoremap <silent>    <A-Left> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-Right> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight
" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used


" vimspector
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
let g:vimspector_enable_mappings='HUMAN'

" jedi-vim

let g:jedi#show_call_signatures = "2"
"NEOMAKE
"
call neomake#configure#automake('nrw', 50)
let g:neomake_python_enabled_makers = ['pylint', 'flake8']

"vim-license

let g:licenses_copyright_holders_name = "Benden, Daniel <dbenden@danielbenden.nl>"
let g:licenses_author_name = "Benden, Daniel <dbenden@danielbenden.nl>"
colors deus
