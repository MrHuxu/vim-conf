# Dotfiles of xhu

## Description

Maintain the Vim configuration of mine.

## Dependencies

1. Vim(8.0 or higher)
2. fzf
3. ctags
4. Golang executable [libraries](https://github.com/Microsoft/vscode-go#go-for-visual-studio-code)

## Install

1. Install neccesary dependencies
2. Remove `.vimrc` & `.vim` directory
3. Clone this repo

        git clone https://github.com/MrHuxu/dotfiles.git

4. Install the font: `dotfiles/powerline-fonts-master/SourceCodePro/Sauce Code Powerline Regular.otf`
5. Install Vim plugins:

        cp .vimrc ~/.vimrc
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        vim +PlugInstall +qall

6. Migrate the theme file:

        mkdir ~/.vim/colors
        cp ~/.vim/plugged/ayu-vim/colors/ayu.vim ~/.vim/colors

7. Update `vim-go` to avoid hotkey conflicts:

        " update ~/.vim/plugged/vim-go/ftplugin/go.vim:38
        -  nnoremap <buffer> <silent> <C-t> :<C-U>call go#def#StackPop(v:count1)<cr>
        +  nnoremap <buffer> <silent> <C-s> :<C-U>call go#def#StackPop(v:count1)<cr>


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
