" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" LaTeX settings
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode -enable-write18 $*'
let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode -enable-write18 $*'
let g:Tex_MultipleCompileFormats='pdf'
" pandoc-bibfiles
let g:pandoc_bibfiles = ["/home/tr608/ImpCol/PhD/my-refs.bib"]
let b:pandoc_bibfiles = ["/home/tr608/ImpCol/PhD/my-refs.bib"]

" Citation autocomplete
let g:pandoc#filetypes#handled=["pandoc", "markdown"]
let g:pandoc#filetypes#handled=["pandoc", "rst"]
let g:pandoc#biblio#bibs=["/home/tr608/ImpCol/PhD/my-refs.bib"]
let g:pandoc#biblio#sources=["/home/tr608/ImpCol/PhD/my-refs.bib"]
let g:pandoc#completion#bib#mode="fallback"

" Gams syntax highlighting
au BufEnter *.gms set ft=gams

" Spelling
au BufNewFile,BufRead,BufEnter *.tex set spell
au BufNewFile,BufRead,BufEnter *.Rnw set spell
au BufNewFile,BufRead,BufEnter *.Rmd set spell
au BufNewFile,BufRead,BufEnter *.md set spell

" Ignore CamelCase words when spell checking
"fun! IgnoreCamelCaseSpell()
   "syn match CamelCase "/\<[A-Z][a-z]\+[A-Z].\{-}\>/" contains=@NoSpell transparent 
   "syn cluster Spell add=CamelCase
"endfun
"autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()
"autocmd BufNewFile,BufRead,BufEnter * :call IgnoreCamelCaseSpell()

"imap CIT \citet{}
"imap CIP \citep{}
"imap REF \ref{}
"imap NO \nomenclature{}

" Mode naviagation and basic commands
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

" Apply solarized colourscheme
se t_Co=16
set background=dark
colorscheme solarized

" Screen management plug-ins
"let vimrplugin_tmux = 0
let vimrplugin_screenplugin = 0

" Cursorline options
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline!<CR>

" Cursor colour
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

" vimwiki settings
let g:vimwiki_list = [{'path': '~/Dropbox/workWiki/', 
			\'path_html': '~/Dropbox/workWiki_html/',
			\'template_path': '~/Dropbox/workWiki/template/',
			\'template_default': 'default',
			\'template_ext': '.tpl'},]
let g:vimwiki_hl_headers=1

" Other
set pastetoggle=<F2>
