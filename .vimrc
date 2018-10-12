"~/.vimrc

let mapleader =" "

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
"	colorscheme 

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

"Navegar con guías (<++>) {
	inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	map <Space><Tab> <Esc>/<++><Enter>"_c4l
"	}

"LATEX {
	autocmd FileType tex inoremap ,up \usepackage{}<Left>

	autocmd FileType tex inoremap ,fig \begin{figure}[]<Enter><Tab>\centering<Enter><Tab>\includegraphics[<++>]{<++>}<Enter><Tab>\caption{<++>}<Enter><Tab>\label{<++>}<Enter>\end{figure}<Esc>5k$ha
	autocmd FileType tex inoremap ,eq \begin{equation}<Enter><Enter>\end{equation}<Up>
	autocmd FileType tex inoremap ,en \begin{enumerate}<Enter><Tab>\item<Enter>\end{enumerate}<Up>
	autocmd FileType tex inoremap ,it \begin{itemize}<Enter><Tab>\item<Enter>\end{itemize}<Up>	

	autocmd FileType tex inoremap ,nd \begin{frame}{}<Enter><++><Enter>\end{frame}<Esc>2k$ha
	autocmd FileType tex inoremap ,bl \begin{block}{}<Enter><++><Enter>\end{block}<Esc>2k$ha

	autocmd FileType tex inoremap ,sec 	\secion{}<Left>
	autocmd FileType tex inoremap ,ssec 	\subsection{}<Left>
	autocmd FileType tex inoremap ,sssec 	\subsubsection{}<Left>

	autocmd FileType tex inoremap ,fra	\fra{}{}

	autocmd FileType tex inoremap ,re	\ref{}<Left>
"	}

"Biber {
	autocmd FileType bib inoremap ,art @article{,<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>journal<Space>=<Space>"<++>",<Enter><Tab>volume<Space>=<Space>"<++>",<Enter><Tab>number<Space>=<Space>"<++>",<Enter><Tab>pages<Space>=<Space>"<++>",<Enter><Tab>doi<Space>=<Space>"<++>",<Enter><Tab>}<Enter><Esc>10k$ha
	autocmd FileType bib inoremap ,bk @book{,<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>publisher<Space>=<Space>"<++>",<Enter><Tab>}<Enter><Esc>6k$ha
	autocmd FileType bib inoremap ,arx @article{,<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>archivePrefix<Space>=<Space>"<++>",<Enter><Tab>eprint<Space>=<Space>"<++>",<Enter><Tab>}<Enter><Esc>7k$ha
"	}

