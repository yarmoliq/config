configure fzf
```sh
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
```
