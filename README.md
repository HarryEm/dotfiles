# Harry's global dotfiles

## Setup

Ensure zsh is default shell via `chsh -s $(which zsh)`

Go to the theme and add this line for the venv prompt
` vim ~/.oh-my-zsh/themes/robbyrussell.zsh-theme`
`PROMPT+='%{$fg[green]%}$(virtualenv_info)%{$reset_color%}%'`

```sh
cd ~
git clone https://github.com/HarryEm/dotfiles.git
cd dotfiles
source install.sh
source setup.sh
```

This is definitely the nerdiest thing I've ever done
