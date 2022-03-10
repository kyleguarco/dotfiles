lua require('config')

set laststatus=2
set showtabline=2
set noshowmode 

" Settings
set tabstop=4
set shiftwidth=4

" Setup VimTeX (https://github.com/lervag/vimtex)
" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","

" https://github.com/wbthomason/packer.nvim#quickstart
" augroup packer_user_config
"   autocmd!
"   autocmd BufWritePost lua/config.lua source <afile> | PackerCompile
" augroup end

