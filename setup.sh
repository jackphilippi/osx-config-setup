#!/bin/bash

USER="$(whoami)"

echo "Running setup script as user: $USER"

# Install homebrew
read -p "🍺 Installing homebrew... <enter>"
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to current PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Homebrew to fish's PATH (via config.fish) if it's not already present
if ! grep -q "brew shellenv" ~/.config/fish/config.fish 2>/dev/null; then
    echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/j.philippi/.config/fish/config.fish
fi

# Install handy brew tools
read -p "🍺 Installing handy brew tools... <enter>"
brew install --force \
    fish \
    jq \
    gh \
    eza \
    font-fira-code-nerd-font \
    font-fira-mono-nerd-fontbrew

# -----------------------------------------------------------
# |                      SUDO SECTION                       |
# -----------------------------------------------------------

read -p "🔒 Enabling sudo to change shell... <enter>"
sudo bash <<END_SUDO
    # Enable sudo to set up config
    sudo su

    # Add fish to /etc/shells and set it as default
    read -p "🐟 Setting fish as default shell... <enter>"
    echo "$(which fish)" | tee -a /etc/shells
    chsh -s "$(which fish)" $USER
END_SUDO

# -----------------------------------------------------------
# |                  ENDING SUDO SECTION                    |
# -----------------------------------------------------------

# Install iterm2
read -p "💻 Installing iterm2... <enter>"
if [ -d "/Applications/iTerm.app" ]; then
    echo "iTerm2 is already installed... Skipping!"
else
    brew install --cask iterm2
fi

# Install omf
read -p "🐟 Installing oh-my-fish... <enter>"
OMF_PATH=$(fish -c 'set -q OMF_PATH; and echo $OMF_PATH || echo ""')

if [ ! -z "$OMF_PATH" ]; then
    echo "Existing omf installation found at $OMF_PATH"
else
    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish --init-command 'set argv --noninteractive'
fi

# Install bobthefish theme
read -p "🐟 Installing bobthefish theme... <enter>"
fish -c "omf install bobthefish"

# Set up vscode config and extensions
read -p "💻 Setting up vscode extensions... <enter>"
mkdir -p ~/.vscode/extensions
cp -R ./vsconfig/extensions/* ~/.vscode/extensions

read -p "💻 Setting up vscode user settings... <enter>"
mkdir -p $HOME/Library/Application\ Support/Code/User/
cp -R ./vsconfig/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

# Manual steps
echo "Don't forget to do the following!"
echo " Install node / nvm (fisher: https://github.com/jorgebucaran/nvm.fish)"
echo " Set up iterm2 with config from './iterm2.settings.itermexport'"

# Change to fish shell
echo "🐟 Changing to fish shell..."
fish