if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"

alias lzd="set -e DOCKER_HOST && lazydocker"
alias lzd-dev="ssh -L ~/docker-remote.sock:/var/run/docker.sock ds-dev -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote.sock && sudo chmod 666 ~/docker-remote.sock && lazydocker"

starship init fish | source

# tfenv configs
export PATH="$HOME/.tfenv/bin:$PATH"

export LC_ALL=ko_KR.UTF-8
export LANG=ko_KR.UTF-8

# Terrafomer(https://github.com/GoogleCloudPlatform/terraformer)
# if need only one, set to one of google, aws or kubernetes.
export PROVIDER=all

set PATH /usr/local/bin /usr/sbin /opt/homebrew/bin /opt/homebrew/sbin /Users/bigfanoftim/Library/maven/apache-maven-3.6.3/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin /Users/bigfanoftim/.fig/bin /Users/bigfanoftim/.local/bin /Users/bigfanoftim/Library/Application Support/JetBrains/Toolbox/scripts $PATH
