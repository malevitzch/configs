function lines() {
  find . -type f -name "*" | xargs wc -l
}
