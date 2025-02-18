bindkey -v

alias ll="ls -lah"
alias mv="mv -i"
alias mkdir="mkdir -p"

export PATH="$HOME/.local/bin:$PATH"

FUNCTIONS_DIR="$HOME/.local/bin/functions"

if [ -d "$FUNCTIONS_DIR" ]; then
	setopt null_glob
	for file in "$FUNCTIONS_DIR"/*.sh; do
		if [ -f "$file" ] && grep -q '()' "$file"; then
			source "$file"
		fi
	done
fi
