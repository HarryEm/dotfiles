# create symlinks to home directory
declare -a arr=(".aliases" ".bashrc" ".vimrc" ".tmux.conf" ".zshrc")
for i in "${arr[@]}" 
do 
    echo Adding sylink for "$i"
    SOURCE="$HOME/dotfiles/$i"
    TARGET="$HOME/$i"

    if [ ! -f $TARGET ]; then
        ln -sv $SOURCE $HOME
    else
        echo "$TARGET exists, remove or archive and run again"
    fi
done

