# vim:ft=zsh ts=2 sw=2 sts=2

# Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}✗ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg_bold[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

PROMPT='
⌚ %{$fg_bold[red]%}%*%{$reset_color%}
$(nvm_prompt_info)$(npm_info)$( )$(pnpm_info)$(bun_info)$(go_info)
%{$fg_bold[yellow]%}$USER %{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info)
$ '

RPROMPT='$(ruby_prompt_info)'