function cd()
{
    builtin cd $@
    if [ -a .git ]; then
      # echo ".git exists";
      read -p "This is a git repo. Please enter username. Hit enter to accept '$(git config user.name)': " name
      git config --global user.name $name
      #echo "Welcome $(git config user.name)!";
    fi
}

