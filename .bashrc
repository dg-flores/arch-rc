# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
PS1='[\u@\h \W]\$ '

alias ll="ls -l"

#Algunos aliases:

#Acceder a los archivos de configuración y rc's {
	alias i3cfg="vim ~/.config/i3/config"
	alias blcfg="vim ~/.config/i3blocks/config"
	alias vrc="vim ~/.vimrc"
	alias vbsh="vim ~/.bashrc"
#	}

#Para acceder al archivo uni.bib {
	alias vbib="vim ~/Documentos/LaTeX/uni.bib"
#	}

#Atajo para Jupyter-notebook {
	alias jpn="jupyter notebook"
#	}

#Añadido por Anaconda3 installer
export PATH="/home/dgflores/.Anaconda/bin:$PATH"
