username() {
   echo "%{$FG[129]%}%n%{$reset_color%}"
}

directory() {
   echo "at \e[1m%{$FG[105]%}%2~%{$reset_color%}" 
}

current_lang() {
  if [[ "$(ls | grep -w node_modules)" = "node_modules" ]] || [[ $(ls | grep "\.js" ) =~ ".js" ]]; then
	  echo "\e[1m%{$FG[010]%}%{$reset_color%}"
  elif [[ "$(ls | grep -w pubspec.yaml)" = "pubspec.yaml" ]] || [[ $(ls | grep "\.dart" ) =~ ".dart" ]]; then
    echo "\e[1m%{$FG[045]%}%{$reset_color%}"
  elif [[ $(ls | grep "\.go" ) =~ ".go" ]]; then
	  echo "\e[1m%{$FG[039]%}%{$reset_color%}"
  elif [[ $(ls | grep "\.java" ) =~ ".java" ]]; then
    echo "\e[1m%{$FG[009]%}%{$reset_color%}"
  elif [[ $(ls | grep "\.py" ) =~ ".py" ]]; then
	  echo "\e[1m%{$FG[011]%}%{$reset_color%}"
  elif [[ $(ls | grep "\.lua" ) =~ ".lua" ]]; then
	  echo "\e[1m%{$FG[015]%}%{$reset_color%}"
  elif [[ $(ls | grep "\.vim" ) =~ ".vim" ]]; then
	  echo "\e[1m%{$FG[040]%}%{$reset_color%}"
	elif [[ $(ls | grep "Cargo.toml" ) = "Cargo.toml" ]] || [[ $(ls | grep "\.rs" ) =~ ".rs" ]]; then
	  echo "\e[1m%{$FG[172]%}%{$reset_color%}"
	else
    echo ""
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[013]%}%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="\e[1m%{$FG[011]%}⚠%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%B$(username) $(directory) $(current_lang)$(git_prompt_info)
%b❯ '
