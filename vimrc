" ==============================================================================
" My .vimrc
" Author: @wildfalcon
" Source: https://github.com/wildfalcon/dotfiles/blob/master/vimrc
" ==============================================================================

set nocompatible              " be iMproved, required
filetype off                  " required

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" ==============================================================================
" SETUP KEY  MAPPINGS 
" ==============================================================================

" Use the space key as leader
let mapleader = "\<Space>"

" ========= NORMAL MODE MAPPINGS ===============================================
" Focus on VimTmuxRunnerPane
nnoremap <leader>fr :VtrFocusRunner<cr>

" Leader-s to save
nnoremap <leader>s :w<cr> 

" Run current spec file
nnoremap <leader>tf :call RunCurrentSpecFile()<cr>

" Run nearest spec
nnoremap <leader>ts :call RunNearestSpec()<cr>

" Attach VimTmuxRunner to a pane
nnoremap <leader>va :VtrAttachToPane<cr> 

" Edit .vimrc
nnoremap <leader>vr :sp $MYVIMRC<cr>

" Re-Source .vimrc
nnoremap <leader>. :source $MYVIMRC<cr>

" zoom a vim pane
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>

" re-balance all panes
nnoremap <leader>= :wincmd =<cr>

" Send lines to tmux-runner
noremap <C-f> :VtrSendLinesToRunner<cr>

" Send file to tmux-runner
noremap <C-r> :VtrSendFile<cr>

" Browse files with FZF
nnoremap <silent> <C-f> :Files<CR>
 
" ==============================================================================
" Set insert mode mappings
" ==============================================================================
imap jk <esc>:w<cr>
imap kj <esc>:w<cr>
" ==============================================================================
" Set options
" ==============================================================================

" Set up tabs correctly
set tabstop=2
set shiftwidth=2
set expandtab

" Make it obvious where 80 char is
set textwidth=80
set colorcolumn=+1
" but don't force linewrapping
set formatoptions-=t

" Display relative line numbers, with absolute line number for current line
set number
set numberwidth=5
set relativenumber

" Set VimRspec to use VimTmuxRunner
let g:rspec_command = "call VtrSendCommand('rspec {spec}')"


" ==============================================================================
" Set up Vundle
" ==============================================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim-plugins')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'thoughtbot/vim-rspec'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
call vundle#end()            " required
filetype plugin indent on    " required

set rtp^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

