"~/.vimrc

let mapleader =" " 

"Configuarción básica {{{
	set number
	set relativenumber
	set nocompatible
	syntax on
	filetype plugin on
	set encoding=utf-8
	set splitbelow	
	set splitright
"}}}

"Atajos para navegar en pantallas divididas {{{
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
"}}}

"LATEX {{{
	autocmd FileType tex inoremap ,up \usepackage{}

	autocmd FileType tex inoremap ,fig \begin{figure}<Enter><Tab>\centering<Enter><Tab>\includegraphics[]{}<Enter><Tab>\caption{}<Enter>\end{figure}
	autocmd FileType tex inoremap ,eq \begin{equation}<Enter><Enter>\end{equation}<Up>
	autocmd FileType tex inoremap ,en \begin{enumerate}<Enter><Enter>\end{enumerate}<Up>
	autocmd FileType tex inoremap ,it \begin{itemize}<Enter><Enter>\end{itemize}

	autocmd FileType tex inoremap ,nd \begin{frame}<Enter><Tab>\frametitle{}<Enter>\end{frame}
	autocmd FileType tex inoremap ,bl \begin{block}{}<Enter><Enter>\end{block}

	autocmd FileType tex inoremap ,sec	\section{}
	autocmd FileType tex inoremap ,ssec  	\subsection{}
	autocmd FileType tex inoremap ,sssec	\subsubsection{}
	
	autocmd FileType tex inoremap ,fra 	\frac{}{}
	autocmd	FileType tex inoremap ,ntheo	\newtheorem{theorem}{}[]
	autocmd FileType tex inoremap ,ncor	\newtheorem{corollary}{}[]
	autocmd FileType tex inoremap ,nlem	\newtheorem{lemma}[]{}
	autocmd FileType tex inoremap ,theo	\begin{theorem}{}<Enter><Enter>\end{theorem}
	autocmd FileType tex inoremap ,cor	\begin{corollary}<Enter><Enter>\end{corollary}
	autocmd FileType tex inoremap ,lem	\begin{lemma}<Enter><Enter>\end{lemma}
	
	autocmd FileType tex inoremap ,ref	\ref{}
" }}}

