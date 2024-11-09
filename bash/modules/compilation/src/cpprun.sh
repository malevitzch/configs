cpprun() {
  if ! command -v g++ &> /dev/null; then
    echo "Error: g++ command not found"
    return 1
  fi
  g++ -o exec "$@"
  if [[ $? -eq 0 ]]; then 
      ./exec
      rm exec
      return 0
  fi
  return 1
}

cfrun() {
  g++ -o exec "$@"
  ./exec | sed 's/^/\x1b[0;32m/; s/$/\x1b[0m/'
  rm exec
}
