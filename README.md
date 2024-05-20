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

Install miniconda

```sudo apt install zsh zsh-syntax-highlighting zsh-autosuggestions```

add pluggins (install oh my zsh:
see (Link)[https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df]

make default:
```chsh -s $(which zsh)```

Create symlink:
``` ln -s ~/Devel/dotfiles/.zshrc ~/.zshrc```

To activade conda:
```conda init zsh```
and restart shell.
