" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode -enable-write18 $*'
let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode -enable-write18 $*'
let g:Tex_MultipleCompileFormats='pdf'

" Gams syntax highlighting
"au BufNewFile,BufRead *.gms set ft=gams
au BufEnter *.gms set ft=gams

" Spelling
au BufNewFile,BufRead,BufEnter *.tex set spell
au BufNewFile,BufRead,BufEnter *.Rnw set spell
au BufNewFile,BufRead,BufEnter *.md set spell
"au BufRead *.md set spell
"au BufRead *.wiki set spell

" Ignore CamelCase words when spell checking
"fun! IgnoreCamelCaseSpell()
   "syn match CamelCase "/\<[A-Z][a-z]\+[A-Z].\{-}\>/" contains=@NoSpell transparent 
   "syn cluster Spell add=CamelCase
"endfun
"autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()
"autocmd BufNewFile,BufRead,BufEnter * :call IgnoreCamelCaseSpell()

imap CIT \citet{}
imap CIP \citep{}
imap REF \ref{}
imap NO \nomenclature{}
nnoremap ; :
imap jj <Esc>

command Swap dawwP

cmap W w
cmap Q q
cmap Wq wq

" Vim-Pathogen setup
execute pathogen#infect()

" R-Vim Plug-in requirements
set nocompatible
filetype plugin on
filetype indent on
syntax enable
syntax on
se t_Co=16
"let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"let vimrplugin_tmux = 0
let vimrplugin_screenplugin = 0

" vimwiki settings
let g:vimwiki_list = [{'path': '~/Dropbox/workWiki/', 
			\'path_html': '~/Dropbox/workWiki_html/',
			\'template_path': '~/Dropbox/workWiki/template/',
			\'template_default': 'default',
			\'template_ext': '.tpl'},
			\ {'path': '~/Dropbox/bible/', 'path_html': '~/Dropbox/bible_html'}]
let g:vimwiki_hl_headers=1
