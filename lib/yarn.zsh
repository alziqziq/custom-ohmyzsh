function yarn_info() {
  which yarn &>/dev/null || return
  local yarn_prompt=${$(yarn -v)#v}

  if [[ "${yarn_prompt//[0-9\.]/}" ]]; then
    return
  fi

  echo " | yarn v${ZSH_THEME_NVM_PROMPT_PREFIX}${yarn_prompt}${ZSH_THEME_NVM_PROMPT_SUFFIX}"
}

function npm_info() {
  which npm &>/dev/null || return
  local npm_prompt=${$(npm -v)#v}

  if [[ "${npm_prompt//[0-9\.]/}" ]]; then
    return
  fi

  echo " | npm v${ZSH_THEME_NVM_PROMPT_PREFIX}${npm_prompt}${ZSH_THEME_NVM_PROMPT_SUFFIX}"
}

function pnpm_info() {
  which pnpm &>/dev/null || return
  local pnpm_prompt=${$(pnpm -v)#v}

  if [[ "${pnpm_prompt//[0-9\.]/}" ]]; then
    return
  fi

  echo " | pnpm v${ZSH_THEME_NVM_PROMPT_PREFIX}${pnpm_prompt}${ZSH_THEME_NVM_PROMPT_SUFFIX}";
}

function go_info() {
  if command -v go &> /dev/null; then
    go_version=$(go version | grep -oP "go[0-9]+\.[0-9]+(\.[0-9]+)?" | sed 's/go//')
    echo " | go v${ZSH_THEME_NVM_PROMPT_PREFIX}${go_version}${ZSH_THEME_NVM_PROMPT_SUFFIX}";
  else
    return
  fi
}