# Vim Configuration of xhu

## Description

Maintain the Vim configuration of mine.

## Dependencies

1. Vim(8.0 or higher)
2. fzf
3. ctags

## Install

1. Remove `.vimrc` & `.vim` directory

2. Install neccesary dependencies

        brew install fzf ctags
        brew install vim --with-lua --with-override-system-vi

3. Clone this repo

        git clone https://github.com/MrHuxu/vim-conf.git && cd vim-conf

4. Install the font [Source Code Pro](https://github.com/powerline/fonts/blob/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf)
5. Install Vim plugins:

        cp .vimrc ~/.vimrc
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        vim +PlugInstall +qall

6. Migrate the theme file:

        mkdir ~/.vim/colors
        cp ~/.vim/plugged/ayu-vim/colors/ayu.vim ~/.vim/colors


## Usage:

- `F2`：Enter paste mode, the status of airline will also change
- `F5`: Invoke `Runit` function to execute current file
- `Ctrl+n`: Toggle NerdTree
- `Ctrl+t`: Toggle TagBar
- `Ctrl+p`: Open fzf panel
- `Ctrl+a`: Open Ack
- `Ctrl+]`: Jump to definition
- `Ctrl+h/j/k/l`: Move cursor among windows
- `:bp/:bn/:bd`: Prev/next/close tab
