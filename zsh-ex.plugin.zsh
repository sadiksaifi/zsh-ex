ex() {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2) command -v tar >/dev/null 2>&1 || { echo >&2 "Please install tar and retry."; return 1; } ; tar xjf $1 ;;
      *.tar.gz) command -v tar >/dev/null 2>&1 || { echo >&2 "Please install tar and retry."; return 1; } ; tar xzf $1 ;;
      *.bz2) command -v bunzip2 >/dev/null 2>&1 || { echo >&2 "Please install bunzip2 and retry."; return 1; } ; bunzip2 $1 ;;
      *.rar) command -v unrar >/dev/null 2>&1 || { echo >&2 "Please install unrar and retry."; return 1; } ; unrar x $1 ;;
      *.gz) command -v gunzip >/dev/null 2>&1 || { echo >&2 "Please install gunzip and retry."; return 1; } ; gunzip $1 ;;
      *.tar) command -v tar >/dev/null 2>&1 || { echo >&2 "Please install tar and retry."; return 1; } ; tar xf $1 ;;
      *.tbz2) command -v tar >/dev/null 2>&1 || { echo >&2 "Please install tar and retry."; return 1; } ; tar xjf $1 ;;
      *.tgz) command -v tar >/dev/null 2>&1 || { echo >&2 "Please install tar and retry."; return 1; } ; tar xzf $1 ;;
      *.zip) command -v unzip >/dev/null 2>&1 || { echo >&2 "Please install unzip and retry."; return 1; } ; unzip $1 ;;
      *.Z) command -v uncompress >/dev/null 2>&1 || { echo >&2 "Please install uncompress and retry."; return 1; } ; uncompress $1 ;;
      *.7z) command -v 7z >/dev/null 2>&1 || { echo >&2 "Please install p7zip and retry."; return 1; } ; 7z x $1 ;;
      *) echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
