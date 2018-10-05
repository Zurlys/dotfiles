if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set nocompatible
set bs=indent,eol,start

set viminfo='20,\"50
set history=50
set ruler

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin on

syntax on
set tabstop=2
