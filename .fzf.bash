# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/ayushmundra/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/ayushmundra/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/ayushmundra/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/ayushmundra/.fzf/shell/key-bindings.bash"

