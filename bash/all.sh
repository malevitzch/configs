function rel_source() {
  local path="$1"
  local base_dir="${BASH_SOURCE[0]%/*}"
  source "$base_dir/$path"
}
