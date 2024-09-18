function rel_source() {
  local path="$1"
  local base_dir="${BASH_SOURCE[0]%/*}"
  source "$base_dir/$path"
}

function import_module() {
  rel_source "./$1/$1.sh";
}

import_module "navigation"
