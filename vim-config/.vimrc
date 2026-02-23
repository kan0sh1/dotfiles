#nocompatible turns off old limitations of vims ancestor Vi. Allows modern
#feature use. filetype off is required by VIM its mentioned in Vundle notes.
# rtp is the runtime path to find manager code plugins
#  vundle#begin tells vim where to start 
#
#  plugin links to the plugin list
#
#  vundle#end tells vundle the plugin list is finished
#
#  plugin indent on tells vim to find specific file types and load the
#  settings for them.
#
# colorscheme sets the actual color scheme
#
# syntax on enables color coding of code

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


Plugin 'dracula/vim'

Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'valloric/youcompleteme'


call vundle#end()
filetype plugin indent on

colorscheme dracula
syntax on
