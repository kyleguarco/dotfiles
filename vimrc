" vim rescources
" by FlashDaggerX

runtime! archlinux.vim

" Required for Vundle
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
filetype plugin indent on

call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'YouCompleteMe/YouCompleteMe'
call vundle#end()

" Required for YouCompleteMe
set encoding=utf-8

" Required for Powerline
" Installed in Arch using the powerline-vim package
"set fillchars+=stl:\ ,stlnc:\
"set laststatus=2
"set ambiwidth=single
"let g:powerline_pycmd='py3'

set tabstop=4
set shiftwidth=4
set autoindent

syntax on

