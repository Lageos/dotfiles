# dotfiles

## tmux

Install: 
* ```sudo apt install tmux```
* [tmux plugin manager](https://github.com/tmux-plugins/tpm)

Clone into ```~/Devel/```

Create symlink.
``` ln -s ~/Devel/dotfiles/.tmux.conf ~/.tmux.conf```

Load config:
```tmux source .tmux.conf```

Install plugins:
```CTRL + B``` and ```I```

Install and select within terminal as font: FiraMono Nerd Font

## zsh

Install:
```sudo apt install zsh zsh-syntax-highlighting zsh-autosuggestions```

Add pluggins (install oh my zsh):
see (Link)[https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df]

make default:
```chsh -s $(which zsh)```

Clone into ```~/Devel/```

Create symlink:
``` ln -s ~/Devel/dotfiles/.zshrc ~/.zshrc```

To activade conda:
install miniconda
```conda init zsh```
and restart shell.
