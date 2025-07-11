comprun() {
  if ! command -v "$1" &> /dev/null; then
    echo "Error: command '$1' not found" >&2
    return 1
  fi
  shift
  g++ -o _exec.tmp "$@" && ./_exec.tmp
  rm -f _exec.tmp
  return 1
}
