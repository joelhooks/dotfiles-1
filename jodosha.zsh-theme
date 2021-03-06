ZSH_THEME_CHRUBY_PROMPT_PREFIX="%{$fg[yellow]%}%{$reset_color%}%{$fg[red]%}"
ZSH_THEME_CHRUBY_PROMPT_SUFFIX="%{$reset_color%} $EPS1"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

PROMPT='$(git_custom_status)%{$fg[cyan]%} %~% %{$reset_color%}:$ZSH_THEME_CHRUBY_PROMPT_PREFIX$(chruby_prompt_info)$ZSH_THEME_CHRUBY_PROMPT_SUFFIX➜ '
