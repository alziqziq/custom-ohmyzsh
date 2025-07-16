# get the nvm-controlled node.js version
function nvm_prompt_info() {
 local managers=("node" "npm" "pnpm" "yarn")
  local output=""
  
  for manager in "${managers[@]}"; do
    local version=$($manager --version 2>/dev/null)
    if [[ -n "$version" ]]; then
      output+="${output:+ | }$manager v$version"
    fi
    
    # Hentikan jika node/npm tidak ditemukan (kecuali untuk manager tambahan)
    if [[ "$manager" == "node" || "$manager" == "npm" ]] && [[ -z "$version" ]]; then
      echo "Error: $manager not found" >&2
      return 1
    fi
  done
  
  echo "$output"
}

function go_info() {
  if command -v go &> /dev/null; then
    go_version=$(go version | perl -nle 'print $& if /go[0-9]+\.[0-9]+(\.[0-9]+)?/' | sed 's/go//')
    echo " | go v${ZSH_THEME_NVM_PROMPT_PREFIX}${go_version}${ZSH_THEME_NVM_PROMPT_SUFFIX}";
  else
    return
  fi
}