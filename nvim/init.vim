call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yuezk/vim-js'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'sainnhe/edge'
Plug 'neoclide/coc-css'
Plug 'ap/vim-css-color'
Plug 'mcchrish/nnn.vim'
Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'airblade/vim-gitgutter'

call plug#end()


set mouse=a
set termguicolors
"let g:airline_theme='hybrid'
colorscheme tokyonight
set number
set encoding=UTF-8

set nobackup
set nowritebackup

set tabstop=2
set shiftwidth=2
set expandtab

set guifont=Source_Code_Pro_for_Powerline:h14


inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" " <C-g>u breaks current undo, please make your own choice

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
    endfunction


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-q> :bnext<CR>
nnoremap <Esc> :q<CR>
nnoremap <C-n> :NnnPicker<CR>

let g:coc_disable_startup_warning = 1
" air-line

let g:airline_powerline_fonts = 1

"     let g:airline_symbols = {}
"
"     " unicode symbols
"     let g:airline_left_sep = '»'
"     let g:airline_left_sep = '▶'
"     let g:airline_right_sep = '«'
"     let g:airline_right_sep = '◀'
"     let g:airline_symbols.linenr = '␊'
"     let g:airline_symbols.linenr = '␤'
"     let g:airline_symbols.linenr = '¶'
"     let g:airline_symbols.branch = '⎇'
"     let g:airline_symbols.paste = 'ρ'
"     let g:airline_symbols.paste = 'Þ'
"     let g:airline_symbols.paste = '∥'
"     let g:airline_symbols.whitespace = 'Ξ'
"
"     " airline symbols
"     let g:airline_left_sep = ''
"     let g:airline_left_alt_sep = ''
"     let g:airline_right_sep = ''
"     let g:airline_right_alt_sep = ''
"     let g:airline_symbols.branch = ''
"     let g:airline_symbols.readonly = ''
"     let g:airline_symbols.linenr = ''

" filenames like *.xml, *.html, *.xhtml, ...
" " These are the file extensions where this plugin is enabled.
" "
let g:closetag_filenames = '*.js,*.html,*.xhtml,*.phtml'
"
" " filenames like *.xml, *.xhtml, ...
" " This will make the list of non-closing tags self-closing in the specified
" files.
" "
let g:closetag_xhtml_filenames = '*.js,*.xhtml,*.jsx'
"
" " filetypes like xml, html, xhtml, ...
" " These are the file types where this plugin is enabled.
" "
let g:closetag_filetypes = 'js,html,xhtml,phtml'
"
" " filetypes like xml, xhtml, ...
" " This will make the list of non-closing tags self-closing in the specified
" files.
" "
let g:closetag_xhtml_filetypes = 'js,xhtml,jsx'
"
" " integer value [0|1]
" " This will make the list of non-closing tags case-sensitive (e.g. `<Link>`
" will be closed while `<link>` won't.)
" "
let g:closetag_emptyTags_caseSensitive = 1
"
" " dict
"  Disables auto-close if not in a "valid" region (based on filetype)
" "
let g:closetag_regions = {
			\'typescript.tsx': 'jsxRegion,tsxRegion',
			\'javascript.jsx': 'jsxRegion',
			\ 'typescriptreact': 'jsxRegion,tsxRegion',
			\ 'javascriptreact': 'jsxRegion',
\ }
"
"                     " Shortcut for closing tags, default is '>'
"                     "
let g:closetag_shortcut = '>'
"
" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

