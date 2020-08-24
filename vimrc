" ====================================================================
" My .vimrc
" Author: @wildfalcon
" Source: https://github.com/wildfalcon/dotfiles/blob/master/vimrc
" ====================================================================

set nocompatible              " be iMproved, required
filetype off                  " required

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" =====================================================================
" SETUP KEY  MAPPINGS 
" ====================================================================

" Use the space key as leader
let mapleader = "\<Space>"

" ========= NORMAL MODE MAPPINGS ====================
" zoom a vim pane
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
" re-balance all panes
nnoremap <leader>= :wincmd =<cr>

" Leader-s to save
nmap <leader>s :w<cr> 
" Edit .vimrc
nmap <leader>vr :sp $MYVIMRC<cr>
" Re-Source .vimrc
nmap <leader>. :source $MYVIMRC<cr>

" ====================================================================
" Set options
" ====================================================================

" Set up tabs correctly
set tabstop=2
set shiftwidth=2
set expandtab

" ====================================================================
" Set up Vundle
" ====================================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim-plugins')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()            " required
filetype plugin indent on    " required
