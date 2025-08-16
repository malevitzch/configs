# bash configs
This part of the repository contains various useful bash aliases separated into modules.  
By default, all modules are enabled, if you want to disable certain module, edit the 'modules' array inside all.sh. If you want to remove a part of a module simply remove it from the 'module_files' array inside the respective module's config file (the .sh file that has the same name as the module).

# installation
To enable all currently used modules, add the following line to your .bashrc file (the .bashrc file should be located in your home directory):
```bash
source <path-to-all.sh>
```
where <path-to-all.sh> is replaced with the location of all.sh in your system.

# creating modules
To create your own module, simply create a new folder with the module's name and put it in the modules folder. Inside, create a file called module-name.sh (where module-name is replaced with the actual name of the module) and an src folder. The main module file should contain two things: the module_name variable and an array of file names (omitting the .sh at the end) that are contained inside the src directory. In the case of dependencies, a file that depends on another file needs to be before it in the array. It is recommanded that the module's root directory contains a 'README.md' file that explains how all of its subfiles work and what aliases do they offer. 

# project todo-list
- nvimf command which fuzzy finds the file I want
- Add a command to reload .tmux.conf
- Vim option to swap two patterns nicely
- A fully configured nvim config that can be used for day-to-day stuff (especially needs lspconfig)
