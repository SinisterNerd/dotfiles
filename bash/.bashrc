# Append Ruby Gem bin directory to your PATH (Required if installed locally)
if which ruby >/dev/null && which gem >/dev/null; then
    export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
fi

# Recommended colorls aliases
alias ls="colorls"
alias lc="colorls -lA --sd"

eval "$(starship init bash)"


FILE=$(tv files)
vim "$FILE"


