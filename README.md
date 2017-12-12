Setting up a new computer


# Necessary apps

- XCode
- Chrome
- iTerm
- Seil


# System Preferences


## Trackpad

Go to System Preferences > Trackpad > Point & Click and find "Tracking speed".
Move it up one notch.


## Dock

Go to System Preferences > Dock and find "Size".
Move the selector all the way to the right.


# XCode

Downloading it from the App Store should kick of the installer. Follow the
directions there to get XCode up and running.


# Chrome

Sign in to relevant Google accounts


# Seil

For more info, see
[this Stack Overflow answer](http://stackoverflow.com/a/8437594/2856441).

1. Go to System Preferences > Keyboard > Keyboard > Modifier Keys... and for
   each keyboard change "Caps Lock Key:" to "No Action"
2. [Download](https://pqrs.org/osx/karabiner/seil.html.en) Seil, open the
   installer, and install it.
3. Open Seil, navigate to Setting > Change the caps lock key, check "Change the
   caps lock key", and enter "53" for the keycode

Move Seil to Applications if it's not already there. The first step doesn't
appear to be necessary, but is probably a good idea in case an OSX update makes
some sort of subtle change that disregards Seil when an action is set for the
caps lock key.


# iTerm


## XCode tools

To start installation of the Command Line Tools:

```bash
xcode-select --install
```

Follow the instructions that pop up to complete installation


## Install Homebrew

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


## Git Setup

### Installation

```bash
brew install git
```

### Set commit user name and email

```bash
git config --global user.name "Your Name"
git config --global user.email you@example.com
```

### Cache Github password

[Caching Github password in git.](https://help.github.com/articles/caching-your-github-password-in-git/)

```bash
git config --global credential.helper osxkeychain
```

### OAuth Tokens

When asked to input username and password to access a git repo, follow the
directions on
[this help page](https://help.github.com/articles/git-automation-with-oauth-tokens/).


## Configure iTerm

### Clone useful repos

```bash
# Make a directory for git repos
mkdir ~/git
# iTerm color schemes
git clone https://github.com/mbadolato/iTerm2-Color-Schemes ~/git/iTerm2-Color-Schemes
# iTerm fonts
git clone https://github.com/powerline/fonts ~/git/fonts
```

### Set up color schemes

Color scheme of choice is currently PaulMillr

1. iTerm > Preferences > Profile > Default > Colors > Color Presets > Import...
2. Navigate to ~/git/iTerm2-Color-Schemes/schemes
3. Choose "PaulMillr.itermcolors"

Or choose a bunch of the files and then select "PaulMillr" in the Color Presets dropdown

### Set up fonts

Font of choice is currently Source Code Pro

```bash
# install fonts
cd ~/git/fonts/
./install.sh
```

iTerm > Preferences > Profile > Default > Text > Change Font
- Font: Source Code Pro for Powerline
- Size: 11px

### Terminal settings

iTerm > Preferences > Profile > Default > Terminal

Check "Unlimited Scrollback"

Uncheck the following:

- Save lines to scrollback when an app status bar is present
- Save lines to scrollback in alternate screen mode
- Disable save/restore alternate screen

### Key Settings

iTerm > Preferences > Profile > Default > Terminal

Change "Left option key acts as:" from "Normal" to "+Esc"

Change Alt+Left to

- Action: Send Escape Sequence
- Esc+: b

Change Alt+Right to

- Action: Send Escape Sequence
- Esc+: f


## Zsh Setup

### Install zsh

```bash
# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# set zsh to default shell language
chsh -s /bin/zsh
# exit shell
exit
# then, reopen iTerm
```

### Set up dotfiles

```bash
mkdir git
git clone https://github.com/JoeKennedy/dotfiles.git ~/git/dotfiles
rm ~/.vimrc
rm ~/.zshrc
ln -s ~/git/dotfiles/vimrc ~/.vimrc
ln -s ~/git/dotfiles/zshrc ~/.zshrc
```

### Install useful tools

```bash
# ag
brew install ag
# wget
brew install wget
# ImageMagick (for rails apps)
brew install ImageMagick
# redis
brew install redis
brew services start redis
```


## Ruby Setup

Ruby setup should be done before Vim setup so that vim is compiled with rvm's
version of ruby. Otherwise down the line there may be some strange issues with
vim down the line.

As an example, when opening a file in a ruby repo with vim, this message will
pop up.

```bash
Ignoring <GEM>-<VERSION> because its extensions are not built. Try: gem pristine <GEM> --version <VERSION>
```

### Install rvm

```bash
# download and install
curl -sSL https://get.rvm.io | bash -s stable
# use rvm for system ruby
rvm system
```

### Rails projects

Clone using either `heroku git:clone` or `git clone`, depending on the repo.
Then `cd` to that directory.

```bash
rvm install <RUBY-VERSION>
gem install bundler
bundle install

# Run one of the two following, either
bundle exec rake db:setup
# Or
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```


## Vim Setup

This was mentioned above, but make sure that the ruby installation and setup,
specifically rvm, is complete before installing vim.

### Install vim

```bash
brew install vim
```

### Create necessary directories

```bash
mkdir ~/.vim/colors
mkdir ~/.vim/tmp
mkdir ~/.vim/backup
```

### Clone repos

```bash
# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# vim color schemes
git clone https://github.com/chrishunt/color-schemes.git ~/git/color-schemes
```

### Set up font

```bash
cp ~/git/color-schemes/thayer/vimbrant.vim ~/.vim/colors/vimbrant.vim
```

### Set up vundle

First, open the `vimrc` file

```bash
vim ~/.vimrc
```

Then, in vim, run the following command install plugins

```bash
:PluginInstall
# Then, quit vim
:q
```

Now, all the vim plugins should be set up.


## Postgres Setup

```bash
# install it
brew install postgresql
# start it up
brew services start postgresql
# create user database
createdb
```


## Heroku Setup

```bash
brew install heroku
heroku login
# Enter email, password, and two-factor code
```

To [clone repos from Heroku](https://devcenter.heroku.com/articles/git-clone-heroku-app), use:

```bash
heroku git:clone -a myapp mydirectory
```

Replace `myapp` with the name of the app to clone and `mydirectory` with the
name of directory to clone into


## Common Lisp Setup

For further reference, see
http://gnperdue.github.io/yak-shaving/osx/lisp/2014/11/10/lisp-setup.html

### Install SBCL

```bash
# sbcl
brew install sbcl
# rlwrap (modernizes the sbcl shell a bit)
brew install rlwrap
```

### Install Quicklisp

```bash
mkdir ~/tmp && cd ~/tmp
curl -O http://beta.quicklisp.org/quicklisp.lisp
curl -O http://beta.quicklisp.org/quicklisp.lisp.asc
sbcl --load quicklisp.lisp
```

This will take you into the SBCL shell. In the SBCL shell, run:

```bash
(quicklisp-quickstart:install)
(ql:add-to-init-file)
; Press Enter to continue
(sb-ext:exit)
```

This will exit the SBCL shell. Installation is complete. Before moving on to the
next step, remove the `tmp` directory

```bash
cd ~ && rm -rf ~/tmp
```

### Install Caveman2

Enter the SBCL shell with `sbcl` and in the shell, install caveman2

```bash
(ql:quickload :caveman2)
(sb-ext:exit)
```

For more info on setting up Caveman2, see
[this helpful](http://ahungry.com/blog/2015-07-07-Writing-a-Common-Lisp-Web-App.html)
guide.

### Create projects

Put new projects in `~/quicklisp/local-projects` or `~/git`.


## Haskell Setup

Due to its integration with [Haskell On Heroku](https://haskellonheroku.com/),
[Halcyon](https://halcyon.sh/) is currently my go-to Haskell package manager.
Hopefully someone writes an integration for Stackage soon...

### Setup Halcyon

As of the most recent commit, Halcyon doesn't support newer versions of OSX. So
instead of running the install script via `curl`, it needs to be downloaded
and tweaked a bit.

```bash
git clone https://github.com/mietek/halcyon ~/git/halcyon
cd ~/git/halcyon
vim setup.sh
```

Edit the `osx` section to ensure that the current version of OSX is included.
Then, setup Halcyon

```bash
brew install bash coreutils git pigz
sh setup.sh
```

When you run the setup script, there will be a "cannot install OS packages" warning.
As long as the packages listed in the warning are installed, and they should be
because of the `brew install` line, halcyon should be set up. Congrats!

Be sure to run `source ~/.zshrc` when halcyon setup is complete to ensure
that the `halcyon` command is added to your shell session.

### Install GHC and Cabal

A simple one line command will install both GHC and Cabal. It will likely take a
few minutes.

```bash
halcyon install
```

### Install Yesod

Yesod is a sweet MVC framework for Haskell. Yesod bin allows you to run `yesod`
commands in your terminal

```bash
cabal install yesod
cabal install yesod-bin
```

### Install apps

Simply run the `halcyon install` command in a haskell project to get it up and
running. It might take a while the first time, since it's setting up a sandbox.

