#!/usr/bin/env fish

#######
# Git #
#######

echo "Install/Upgrade of git"
brew update
brew install git


#################
# Git Diff tool #
#################

echo "Install diff-so-fancy"
brew install diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

#######################
# Git Global config   #
#######################

git config --global user.name davinkevin
git config --global user.email davin.kevin@gmail.com
git config --global core.excludesfile ~/.gitignore_global

git config --global alias.br branch
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.list 'log --oneline --decorate'
git config --global alias.rb rebase
git config --global alias.list-alias 'config --get-regexp alias'
git config --global alias.trash 'checkout -- .'
git config --global alias.graph 'log --all --decorate --oneline --graph'

#####################
# Git GPG Signature #
#####################

echo "Configuration of signed commit with GIT"

echo "You need to first install GPG Suite"
echo "Can be downloaded at https://gpgtools.org/"
echo "Documentation about the whole process available here : https://gist.github.com/danieleggert/b029d44d4a54b328c0bac65d46ba4c65"

git config --global gpg.program /usr/local/MacGPG2/bin/gpg2
git config --global user.signingkey (gpg --list-secret-keys --keyid-format LONG | grep sec | grep expire | head -n 1 | sed -e 's@.*/\([^ ]*\) .*@\1@g')
git config --global commit.gpgsign true

echo "Allow to be used without GUI"
echo "no-tty" >> ~/.gnupg/gpg.conf
