say() {
  if [[ "${1}" =~ -[a-z]{2} ]]; then 
    local lang=${1#-};
    local text="${*#$1}";
  else 
    local lang=${LANG%_*};
    local text="$*";
  fi;
  mplayer "http://translate.google.com/translate_tts?ie=UTF-8&tl=${lang}&q=${text}" &> /dev/null ; 
}
