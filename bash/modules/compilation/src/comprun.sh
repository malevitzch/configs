comprun() {
  if ! command -v "$1" &> /dev/null; then
    echo "Error: command '$1' not found" >&2
    return 1
  fi
  shift
  g++ -o exec "$@" && ./exec
  if [[ $? -eq 0 ]]; then 
      rm exec
      return 0
  fi
  return 1
}
