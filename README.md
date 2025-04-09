# Harry's global dotfiles

## Setup
```sh
# linux
sudo yum update

# Installing ZSH
sudo yum -y install zsh

# Check ZSH has been installed
zsh --version

# Install "util-linux-user" because "chsh" is not available by default
# See https://superuser.com/a/1389273/599050
sudo yum install util-linux-user

# Change default shell for current user, most of the times it would be "ec2-user"
# Or use "sudo chsh -s $(which zsh) $(whoami)" to be sure
sudo chsh -s $(which zsh) $(whoami)
```

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
