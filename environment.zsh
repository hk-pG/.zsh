# docker
source $HOME/.zsh/completions/_docker
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# local go
export PATH="$PATH:$HOME/go/bin"

# aqua package manager
export PATH="${AQUA_ROOT_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/aquaproj-aqua}/bin:$PATH"

# asdf
. "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

### local tools

# sheldon
export PATH="$PATH:$HOME/local_tools/sheldon/target/release"
eval "$(sheldon source)"

# DevToys
export PATH="$PATH:$HOME/local_tools/devtoys/"

# javahome
export JAVA_HOME=$HOME/.asdf/installs/java/adoptopenjdk-17.0.12+7/

# cron editor setting
export EDITOR="nvim"

