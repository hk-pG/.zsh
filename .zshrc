echo "START .zshrc"

if [ -d "$HOME/.zsh" ];then
  for file in "$HOME/.zsh"/*.zsh; do
    [ -r "$file" ] && source "$file" && echo "loaded $file"
  done
fi

# for docker comletion
# https://docs.docker.com/engine/cli/completion/#zsh
autoload -Uz compinit
compinit

# completions script
dir="$(pwd)"
cd "$HOME/scripts/completion/" || exit
for file in *.sh; do
  source "$file"
done
cd "$dir" || exit

# functions script
dir="$(pwd)"
cd "$HOME/scripts/function/" || exit
for file in *.sh; do
  source "$file"
done
cd "$dir" || exit
