function longlines() {
  grep -n '^.\{81,\}' "$1"
}
