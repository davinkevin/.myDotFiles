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


#####################
# Git GPG Signature #
#####################

echo "Configuration of signed commit with GIT"

echo "You need to first install GPG Suite"
echo "Can be downloaded at https://gpgtools.org/"
echo "Documentation about the whole process available here : https://gist.github.com/danieleggert/b029d44d4a54b328c0bac65d46ba4c65"

git config --global gpg.program /usr/local/MacGPG2/bin/gpg2
git config --global user.signingkey (gpg2 --list-secret-keys | grep sec | grep expire | head -n 1 | sed -e 's@.*R/\([^ ]*\) .*@\1@g')
git config --global commit.gpgsign true

echo "Allow to be used without GUI"
echo "no-tty" >> ~/.gnupg/gpg.conf