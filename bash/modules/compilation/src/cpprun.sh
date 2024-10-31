cpprun() {
  g++ -o exec "$@"
  ./exec
  rm exec
}
