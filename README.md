auto-prompt-git-username
========================

Small bash shell script that automatically prompts for your git user.name when you cd to a directory that's a git repo.


What problem this solves
========================

If you're using git-svn, your user name is stored in a config file. In a collocated team with shared development environments, this can be a problem if people periodically switch from one computer to another. It can cause people to unwittingly commit code under someone else's git username. 


What it is
==========
This is a small shell script that redefines the "cd" bash command. When you cd into a directory that is a git repo (because it contains the .git folder), it prompts you to set your username. If you hit enter, the existing username is left intact.

The script modifies the "user.name" global property in git config.


How to install
==============

On a bash-like shell, you may run the following command:

  source .bash_profile

Alternatively, you may add the contents of the file to the .bash_profile file in your home directory.  
