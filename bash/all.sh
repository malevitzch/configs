# the modules variable contains a list of modules that all.sh imports
modules=("navigation" "files" "system")

# the module_files variable is declare globally to be modified by every sourced module file
module_files=()

# the module_name variable is used to generate paths for imports 
module_name=() 

# do not touch this one unless you know what you are doing
project_path="${BASH_SOURCE[0]%/*}";

function rel_source() {
  local path="$1"
  source "$project_path/$path"
}

function import_files() {
  for cur_file in "${module_files[@]}"; do
    rel_source "modules/$module_name/src/$cur_file"
  done
}

function import_module() {
  rel_source "modules/$1/$1.sh"
  import_files
}

for cur_module in "${modules[@]}"; do
  import_module "$cur_module"
done
