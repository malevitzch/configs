rustrun() {
  comprun rustc "$@"
}

cfrunr() {
  rustrun "$@" | sed 's/^/\x1b[0;32m/; s/$/\x1b[0m/'
}
