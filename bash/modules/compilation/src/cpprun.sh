cpprun() {
  g++ -o exec "$@"
  ./exec
  rm exec
}

cfrun() {
  g++ -o exec "$@"
  ./exec | sed 's/^/\x1b[0;32m/; s/$/\x1b[0m/'
  rm exec
}
