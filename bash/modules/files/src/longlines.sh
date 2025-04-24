function longlines() {
  grep -r -n '^.\{81,\}' "$@"
}
