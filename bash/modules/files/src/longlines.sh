function longlines() {
  if ! grep -r -n --color=always '^.\{81,\}' "$@" | tee /dev/tty | grep -q .; then
    echo -e "\033[32mNo long lines found\033[0m"
  fi
  echo "\n"
}
