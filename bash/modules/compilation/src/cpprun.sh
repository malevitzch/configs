cpprun() {
  comprun g++ "$@"
}

cfrun() {
  cpprun "$@" | sed 's/^/\x1b[0;32m/; s/$/\x1b[0m/'
}
