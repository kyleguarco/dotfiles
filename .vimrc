"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" Initialize the plugin system 'vim-plug'
call plug#begin('~/.vim/plugged')
" Put all plugins used here (Github repo syntax)
Plug 'JuliaEditorSupport/julia-vim'
Plug 'ycm-core/YouCompleteMe'
" Use the plugins
call plug#end()

" Setup VIM Powerline (https://github.com/powerline/powerline)
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
" (https://powerline.readthedocs.io/en/latest/usage/other.html#vim-statusline)
" (https://powerline.readthedocs.io/en/latest/tips-and-tricks.html#useful-settings)
set laststatus=2
set showtabline=2
set noshowmode 

" Settings
set tabstop=4
set shiftwidth=4

