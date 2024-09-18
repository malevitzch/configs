# bash configs
This part of the repository contains various useful bash aliases separated into modules.  
By default, all modules are enabled, if you want to disable certain module, edit the 'modules' array inside all.sh. If you want to remove a part of a module simply remove it from the 'module_files' array inside the respective module's config file (the .sh file that has the same name as the module).

# installation
To enable all currently used modules, add the following line to your .bashrc file (the .bashrc file should be located in your home directory):
```
source <path-to-all.sh>
```
where <path-to-all.sh> is replaced with the location of all.sh in your system.
