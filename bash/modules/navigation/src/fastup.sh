function up_n() {
  cd $(printf "%0.0s../" $(seq 1 $1));
}
alias 'cd..'='up_n'
