" This has to be set before Pathogen is loaded
set nocompatible
filetype off

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags() " auto-generate helptags for Pathogen bundles

runtime! config/general.vim
runtime! config/keybindings.vim
