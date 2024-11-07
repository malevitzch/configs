rustrun() {
  rustc -o exec "$@"
  ./exec
  rm exec
}

cfrunr() {
  rustc -o exec "$@"
  ./exec | sed 's/^/\x1b[0;32m/; s/$/\x1b[0m/'
  rm exec
}
