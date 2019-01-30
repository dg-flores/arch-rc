"~/.vimrc

let mapleader =" "

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()

"Configuración básica {
	set number
	set relativenumber
	set nocompatible
	syntax on
	filetype plugin on
	set encoding=utf-8
	set splitbelow
	set splitright
"	}

"Colores {
	colorscheme wal

"Para navergar en patalla dividida {
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
"	}

"Para abrir un nuevo archivo en pantalla dividida (vertical) {
	nnoremap <leader>nv :vnew<CR>
	"<C-w>n abre un nuevo archivo también, pero horizontal
"	}

"Para abrir el archivo de bibliografía en patanlla dividida {
	map <F9> :vsp<Space>~/Documentos/LaTeX/uni.bib<CR>
	map <leader>b :vsp<Space>~/Documentos/LaTeX/uni.bib<CR>
"	}

"Goyo
	map <leader>f :Goyo \| set linebreak<CR>

"Para un glosario de símbolos matemáticos {
	map <leader>+ :!zathura<Space>~/Documentos/LaTeX/Symbols.pdf<Space>&<Space>disown<Enter>
"	}

"Para detectar tipos de archivos {
	autocmd BufRead,BufNewFile *.ms,*.me,*.mm set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex
"	}

"Navegar con guías (<++>) {
	inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	map <Space><Tab> <Esc>/<++><Enter>"_c4l
"	}

"Navegar y escoger url's {
"	:noremap <leader>u :w<Home> !urlscan -r 'linkhandler {}'<CR>
"	}

"Para escribir correos (mutt) con Goyo {
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo
"	}

"LATEX {
	autocmd FileType tex inoremap ,up \usepackage{}<Left>

	autocmd FileType tex inoremap ,fig \begin{figure}[]<Enter><Tab>\centering<Enter><Tab>\includegraphics[<++>]{<++>}<Enter><Tab>\caption{<++>}<Enter><Tab>\label{<++>}<Enter>\end{figure}<Esc>5k$ha
	autocmd FileType tex inoremap ,eq \begin{equation}<Enter><Enter>\end{equation}<Up>
	autocmd FileType tex inoremap ,en \begin{enumerate}<Enter><Tab>\item<Enter>\end{enumerate}<Up>
	autocmd FileType tex inoremap ,it \begin{itemize}<Enter><Tab>\item<Enter>\end{itemize}<Up>	

	autocmd FileType tex inoremap ,nd \begin{frame}{}<Enter><++><Enter>\end{frame}<Esc>2k$ha
	autocmd FileType tex inoremap ,bl \begin{block}{}<Enter><++><Enter>\end{block}<Esc>2k$ha

	autocmd FileType tex inoremap ,sec 	\section{}<Left>
	autocmd FileType tex inoremap ,ssec 	\subsection{}<Left>
	autocmd FileType tex inoremap ,sssec 	\subsubsection{}<Left>

	autocmd FileType tex inoremap ,fra	\frac{}{}

	autocmd FileType tex inoremap ,re	\ref{}<Left>
"	}

"Biber {
	autocmd FileType bib inoremap ,art @article{,<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>journal<Space>=<Space>"<++>",<Enter><Tab>volume<Space>=<Space>"<++>",<Enter><Tab>number<Space>=<Space>"<++>",<Enter><Tab>pages<Space>=<Space>"<++>",<Enter><Tab>doi<Space>=<Space>"<++>",<Enter><Tab>}<Enter><Esc>10k$ha
	autocmd FileType bib inoremap ,bk @book{,<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>publisher<Space>=<Space>"<++>",<Enter><Tab>}<Enter><Esc>6k$ha
	autocmd FileType bib inoremap ,arx @article{,<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>archivePrefix<Space>=<Space>"<++>",<Enter><Tab>eprint<Space>=<Space>"<++>",<Enter><Tab>}<Enter><Esc>7k$ha
"	}

"Markdown {
	autocmd FileType rmd map <F5> :!echo<space>"require(rmarkdown);<Space>render('<C-r>%')"<Space>\|<Space>R<Space>--vanilla<Enter>
"	}

