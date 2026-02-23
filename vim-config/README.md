#VIM Configuration

## Overview
This configuration uses Vundle for plugin management,
#VIM Configuration                                                                                                                                      ## Overview                                                                 This configuration uses Vundle for plugin management,                                                                                                   Plugins included:                                                               - dracula: dark with high contrast color scheme                             - vim-indent-guides: visually displays indents                              - fugitive: git wrapper for vim(included from instructor havent figured out how useful this is at this moment, may delete)                              - youcompleteme: code completion engine                                                                                                             ## Installation                                                                                                                                         To set up this configuration on a new system:                                                                                                           1. clone the repository                                                         `git clone https://github.com/kan0sh1/dotfiles.git`                                                                                                 2. navigate to the directory                                                                                                                            3. Run the install script                                                       `chmod +x install.sh`                                                       `./install.sh`                                                                                                                                                                                                                  Important notes on first run                                                    On first run you will likely see an error stating E185: cannot find color scheme 'dracula'. This is expected.                                                                                                                   Vim tries to download before Vundle has finished downloading it. Script will proceed anyways. After it installs the plugins the error will dissapear when you next open vim.
                                                                            You complete me requires some extra work. After running the script you can insall the needed bits by -
Plugins included:
    - dracula: dark with high contrast color scheme
    - vim-indent-guides: visually displays indents
    - fugitive: git wrapper for vim(included from instructor havent figured out how useful this is at this moment, may delete)
    - youcompleteme: code completion engine

## Installation

To set up this configuration on a new system:

1. clone the repository
    `git clone https://github.com/kan0sh1/dotfiles.git`

2. navigate to the directory

3. Run the install script
    `chmod +x install.sh`
    `./install.sh`


Important notes on first run
    On first run you will likely see an error stating E185: cannot find color scheme 'dracula'. This is expected.

Vim tries to download before Vundle has finished downloading it. Script will proceed anyways. After it installs the plugins the error will dissapear when you next open vim.

You complete me requires some extra work. After running the script you can insall the needed bits by - 

    `cd ~/.vim/bundle/youcompleteme`
    `sudo apt install build-essential cmake python3-dev`
    `python3 install.py --all`

Note: This install will take a few moments to add the libraries.

## Citations


Vundle:
https://github.com/VundleVim/Vundle.vim

Dracula Colorscheme: 
https://vimawesome.com/plugin/dracula-theme-who-speaks

Dracula Colorscheme Troubleshooting:
https://github.com/dracula/vim/issues/140

Indent Guides:
https://vimawesome.com/plugin/indent-guides

Fugitive:
https://vimawesome.com/plugin/fugitive-vim

YouCompleteMe:
https://vimawesome.com/plugin/youcompleteme

YouCompleteMe Assistance:
Gemini- YCMD server SHUT DOWN assistance

Tutorials:
https://www.digitalocean.com/community/tutorials/how-to-use-vundle-to-manage-vim-plugins-on-a-linux-vps
