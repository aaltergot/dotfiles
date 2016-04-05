PROMPT='%c${ZSH_THEME_GIT_PROMPT_GPI} '

ZSH_THEME_GIT_PROMPT_PREFIX=':'
ZSH_THEME_GIT_PROMPT_SUFFIX=''
ZSH_THEME_GIT_PROMPT_DIRTY='*'
ZSH_THEME_GIT_PROMPT_CLEAN=''
ZSH_THEME_GIT_PROMPT_GPI=''

autoload -U add-zsh-hook
add-zsh-hook precmd update_gpi

update_gpi () {
  ZSH_THEME_GIT_PROMPT_GPI=$(git_prompt_info)
}
