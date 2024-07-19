# start in git directory (only for non-vscode terminals)
if test "$TERM_PROGRAM" != "vscode"
    cd ~/git
end

# ---------------------------------------------------------------------------- #
#                                Homebrew setup                                #
# ---------------------------------------------------------------------------- #

eval "$(/opt/homebrew/bin/brew shellenv)"

# ---------------------------------------------------------------------------- #
#                                 Prompt Config                                #
# ---------------------------------------------------------------------------- #

# Set up starship prompt
starship init fish | source

# Add fuzzy find to fish shell
fzf --fish | source

# Make the prompt transient
# function starship_transient_prompt_func
#   starship module character
# end
starship init fish | source
# enable_transience

# ---------------------------------------------------------------------------- #
#                            Granted (assume) alias                            #
# ---------------------------------------------------------------------------- #

alias assume="source (brew --prefix)/bin/assume.fish"

# ---------------------------------------------------------------------------- #
#                          Easygo Kubernetes  Aliases                          #
# ---------------------------------------------------------------------------- #

alias k="kubectl"
alias ds="docker stop (docker ps -a -q)"
alias dp="docker system prune --force --volumes"
alias dr="docker rmi (docker images -q) -f"
alias terraform-plan="terraform plan -var source_version=(git rev-parse HEAD)"
alias terraform-apply="terraform apply -var source_version=(git rev-parse HEAD)"

function stake-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:526131802871:cluster/stake
  kubectl config set-context --current --namespace=backend
  set -gx AWS_PROFILE stake
end

function primedice-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:245290535291:cluster/primedice
  kubectl config set-context --current --namespace=backend
  set -gx AWS_PROFILE primedice
end

function mexico-credentials
  kubectl config use-context arn:aws:eks:sa-east-1:767776815462:cluster/mexico
  kubectl config set-context --current --namespace=backend
  set -gx AWS_PROFILE mexico
end

function mexico-staging-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=mexico
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function sweeps-credentials
  kubectl config use-context arn:aws:eks:ca-central-1:488586442399:cluster/sweeps
  kubectl config set-context --current --namespace=backend
  set -gx AWS_PROFILE sweeps
end

function canada-credentials
  kubectl config use-context arn:aws:eks:ca-central-1:587955874459:cluster/canada
  kubectl config set-context --current --namespace=backend
  set -gx AWS_PROFILE canada
end

function wallet-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:624419035832:cluster/wallet
  kubectl config set-context --current --namespace=backend
  set -gx AWS_PROFILE wallet
end

function staging-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=backend
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function sweeps-staging-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=sweeps
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function canada-staging-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=canada
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function twist-staging-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=twist
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function agile-titan-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=agile-titan
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function alpine-grandpa-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=alpine-grandpa
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function blissful-serpent-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=blissful-serpent
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function crazy-tsunami-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=crazy-tsunami
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function dead-thunder-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=dead-thunder
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function defiant-falcon-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=defiant-falcon
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function dessert-queen-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=dessert-queen
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function fancy-wing-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=fancy-wing
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function fast-lizard-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=fast-lizard
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function frozen-cameo-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=frozen-cameo
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function guilty-arrow-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=guilty-arrow
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function handsome-demon-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=handsome-demon
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function happy-beehive-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=happy-beehive
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function hasty-baron-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=hasty-baron
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function idle-duster-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=idle-duster
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function lone-phoenix-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=lone-phoenix
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function low-halo-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=low-halo
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function lucky-volunteer-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=lucky-volunteer
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function mellow-caravan-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=mellow-caravan
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function perfect-eagle-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=perfect-eagle
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function polar-lotus-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=polar-lotus
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function sleepy-olympus-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=sleepy-olympus
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function tinted-star-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=tinted-star
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function toxic-author-credentials
  kubectl config use-context arn:aws:eks:eu-west-1:684266004355:cluster/staging
  kubectl config set-context --current --namespace=toxic-author
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end

function local-credentials
  kubectl config use-context docker-desktop
  kubectl config set-context --current --namespace=backend
  set -gx AWS_PROFILE eg-staging # This is the staging profile set up in ~/.aws/config
end


