# dotfiles

## tmux

Clone into ~/Devel/


Create symlink.
``` ln -s ~/Devel/dotfiles/.tmux.conf ~/.tmux.conf```

Install 

* tmux plugin manager
* [tmux gitbar](https://github.com/arl/tmux-gitbar)

Run 
```tmux source .tmux.conf```

Install and select within terminal as font: FiraMono Nerd Font

## Install zsh

```sudo apt install zsh zsh-syntax-highlighting package```

make default:
```chsh -s $(which zsh)```

Create symlink:
``` ln -s ~/Devel/dotfiles/.zshrc ~/.zshrc```

add pluggins:
see (Link)[https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df]

