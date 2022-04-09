function yarn_info() {
  which yarn &>/dev/null || return
  local yarn_prompt=${$(yarn -v)#v}
  echo "yarn v${ZSH_THEME_NVM_PROMPT_PREFIX}${yarn_prompt}${ZSH_THEME_NVM_PROMPT_SUFFIX}"
}