function yarn_info() {
  which yarn &>/dev/null || return
  local yarn_prompt=${$(yarn -v)#v}

  if [[ "${yarn_prompt//[0-9\.]/}" ]]; then
    return
  fi

  echo " | yarn v${ZSH_THEME_NVM_PROMPT_PREFIX}${yarn_prompt}${ZSH_THEME_NVM_PROMPT_SUFFIX}"
}

function pnpm_info() {
  which pnpm &>/dev/null || return
  local pnpm_prompt=${$(pnpm -v)#v}

  if [[ "${pnpm_prompt//[0-9\.]/}" ]]; then
    return
  fi

  echo " | pnpm v${ZSH_THEME_NVM_PROMPT_PREFIX}${pnpm_prompt}${ZSH_THEME_NVM_PROMPT_SUFFIX}";
}