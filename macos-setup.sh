echo "Starting installer =)"
echo "Installing homebrew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Finished installing homebrew..."

FormulaeAppList=(
    git
    node
    php
    composer
    mariadb
    postgresql
)

echo "Installing NonCaskAppList"
brew install --cask ${FormulaeAppList[@]}
echo "Finished installing NonCaskAppList"

CaskAppList=(
	brave-browser
	sublime-text
	visual-studio-code
	tableplus
	sourcetree
	discord
	slack
	firefox
	figma
	insomnia
	loom
	gimp
	spotify
	stack-stack
	mailspring
)

echo "Installing CaskAppList"
brew install --cask ${CaskAppList[@]}
echo "Finished installing CaskAppList"
echo "Finish by setting up git, mariadb, postgresql"
