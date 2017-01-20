
# === {{CMD}}  "ext" "URL"
list-ext () {
  local +x EXT="$1"; shift
  local +x URL="$@"
  lynx --dump "$URL" | grep -i -Po "\K(http|ftp)s?://.+$EXT"
} # === end function
