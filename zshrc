# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export MAVEN_OPTS=-Xmx2G
export M2_HOME=/usr/local/Cellar/maven/3.2.2/libexec
export PATH="/usr/local/bin:/Users/jkennedy/.rvm/gems/ruby-2.1.2/bin:/Users/jkennedy/.rvm/gems/ruby-2.1.2@global/bin:/Users/jkennedy/.rvm/rubies/ruby-2.1.2/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/jkennedy/.rvm/bin:/Users/jkennedy/.rvm/bin:JAVA_HOME/bin:M2_HOME/bin"

export ODBCINI=/etc/odbc.ini
export ODBCSYSINI=/etc
export FREETDSCONF=/etc/freetds/freetds.conf
 
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_OPTS=-Xmx768m

export ANT_ARGS=-Dconfig=jkennedy.properties
export ANT_HOME=/usr/share/ant
export ANT_OPTS='-Xmx512M -DnonBatchMode -DcheckZipIndexTimestamp -DuseJavaUtilZip'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails ruby brew mvn osx scala history-substring-search zsh-syntax-highlighting battery)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  # export EDITOR='mvim'
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias pxbl='beeline -u jdbc:hive2://wal1-clustera01:10000 -n jkennedy --color=true --outputformat=vertical'

# Easy cd-ing
alias 1.="cd .."
alias 2.="cd ../.."
alias 3.="cd ../../.."
alias 4.="cd ../../../.."
alias 5.="cd ../../../../.."
alias 6.="cd ../../../../../.."
alias 7.="cd ../../../../../../.."
alias 8.="cd ../../../../../../../.."
alias 9.="cd ../../../../../../../../.."
alias 10.="cd ../../../../../../../../../.."

# Abbreviations for common commands
alias hig="history | grep"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias sozsh="source ~/.zshrc"
alias vimup="vim +PluginInstall +qall"

function setjdk() {
  if [ $# -ne 0 ]; then
    removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
    if [ -n "${JAVA_HOME+x}" ]; then
      removeFromPath $JAVA_HOME
    fi
    export JAVA_HOME=`/usr/libexec/java_home -v $@`
    export PATH=$JAVA_HOME/bin:$PATH
  fi
}
function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
setjdk 1.7

eval "$(bash /Users/jkennedy/Documents/Repositories/DI-Storage/cluster-config/ue1b-labA/env.sh /Users/jkennedy/Documents/px/ue1b-labA-cdh5.2.1)"

