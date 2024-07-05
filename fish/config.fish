if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"

alias lzd="set -e DOCKER_HOST && lazydocker"
alias lzd-dev="ssh -L ~/docker-remote-dev.sock:/var/run/docker.sock vd-dev-containers -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-dev.sock && sudo chmod 666 ~/docker-remote-dev.sock && lazydocker"
alias lzd-stage="ssh -L ~/docker-remote-stage.sock:/var/run/docker.sock ds-stage -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-stage.sock && sudo chmod 666 ~/docker-remote-stage.sock && lazydocker"
alias lzd-prod="ssh -L ~/docker-remote-prod.sock:/var/run/docker.sock vd-prd-admin -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-prod.sock && sudo chmod 666 ~/docker-remote-prod.sock && lazydocker"
alias lzd-global="ssh -L ~/docker-remote-global.sock:/var/run/docker.sock global-maintenance -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-global.sock && sudo chmod 666 ~/docker-remote-global.sock && lazydocker"

alias lzd-ksnet-dev="ssh -L ~/docker-remote-ksnet-dev.sock:/var/run/docker.sock ksnet-dev -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-ksnet-dev.sock && sudo chmod 666 ~/docker-remote-ksnet-dev.sock && lazydocker"
alias lzd-ksnet-staging="ssh -L ~/docker-remote-ksnet-staging.sock:/var/run/docker.sock ksnet-staging -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-ksnet-staging.sock && sudo chmod 666 ~/docker-remote-ksnet-staging.sock && lazydocker"
alias lzd-ksnet-prod-containers-1="ssh -L ~/docker-remote-ksnet-prod-containers-1.sock:/var/run/docker.sock ksnet-prod-containers-1 -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-ksnet-prod-containers-1.sock && sudo chmod 666 ~/docker-remote-ksnet-prod-containers-1.sock && lazydocker"
alias lzd-ksnet-prod-containers-2="ssh -L ~/docker-remote-ksnet-prod-containers-2.sock:/var/run/docker.sock ksnet-prod-containers-2 -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-ksnet-prod-containers-2.sock && sudo chmod 666 ~/docker-remote-ksnet-prod-containers-2.sock && lazydocker"
alias lzd-ksnet-prod-gateway="ssh -L ~/docker-remote-ksnet-prod-gateway.sock:/var/run/docker.sock ksnet-prod-gateway -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote-ksnet-prod-gateway.sock && sudo chmod 666 ~/docker-remote-ksnet-prod-gateway.sock && lazydocker"

alias lzd-feedoong="ssh -L ~/docker-remote.sock:/var/run/docker.sock feedoong -fN && export DOCKER_HOST=unix:///Users/bigfanoftim/docker-remote.sock && sudo chmod 666 ~/docker-remote.sock && lazydocker"

alias dot="cd ~/dotfiles"

alias obo="cd $HOME/dev/obsidian/obsidian-nvim-with-quartz"
alias obk="vi $HOME/dev/obsidian/obsidian-nvim-with-quartz/content/kanban/vd.md"

# alias obr="vi $HOME/Dropbox/obsidian/0-inbox/*.md"
# alias obu="cd $HOME/notion-obsidian-sync && node batchUpload.js --lastmod-days-window 5"

alias vdtf="cd $HOME/dev/vdcrux/infrastructure/terraform"
alias vdtg="cd $HOME/dev/vdcrux/infrastructure/terraform/terragrunt/vd/ap-northeast-2"
alias vdn="cd $HOME/dev/vdcrux/vd_company"
alias vdo="cd $HOME/dev/vdcrux/vdcompany"

starship init fish | source

# --------------------------------------------------------------------------------------------------------------------
# lazygit
# --------------------------------------------------------------------------------------------------------------------
alias lg="lazygit"

# --------------------------------------------------------------------------------------------------------------------
# Terraform
# --------------------------------------------------------------------------------------------------------------------
# tfenv configs
export PATH="$HOME/.tfenv/bin:$PATH"

# Terrafomer(https://github.com/GoogleCloudPlatform/terraformer)
# if need only one, set to one of google, aws or kubernetes.
export PROVIDER=all

alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"

# --------------------------------------------------------------------------------------------------------------------
# Terragrunt
# --------------------------------------------------------------------------------------------------------------------
alias tgi="terragrunt init"
alias tgp="terragrunt plan"
alias tga="terragrunt apply"

alias tgap="terragrunt run-all plan"


export LC_ALL=ko_KR.UTF-8
export LANG=ko_KR.UTF-8

set PATH /usr/local/bin /usr/sbin /opt/homebrew/bin /opt/homebrew/sbin /Users/bigfanoftim/Library/maven/apache-maven-3.6.3/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin /Users/bigfanoftim/.fig/bin /Users/bigfanoftim/.local/bin /Users/bigfanoftim/Library/Application Support/JetBrains/Toolbox/scripts $PATH
# set -gx PATH $PATH ~/bin
set -gx PATH /usr/local/go/bin $PATH
