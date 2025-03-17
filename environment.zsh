# docker
source $HOME/.zsh/completions/_docker
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# local go
export PATH="$PATH:$HOME/go/bin"

# sheldon
export PATH="$PATH:$HOME/local_tools/sheldon/target/release"
eval "$(sheldon source)"

# DevToys
export PATH="$PATH:$HOME/local_tools/devtoys/"

# javahome
export JAVA_HOME=$HOME/.asdf/installs/java/adoptopenjdk-17.0.12+7/

# cron editor setting
export EDITOR="nvim"

