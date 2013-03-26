function cd()
{
    builtin cd $@
    if [ -a .git ]; then
      read -p "This is a git repo. Please enter username. Hit enter to accept '$(git config user.name)': " name
      git config --global user.name $name
    fi
}

