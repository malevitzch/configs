crun() {
  gcc -o exec "$@"
  ./exec
  rm exec
}
