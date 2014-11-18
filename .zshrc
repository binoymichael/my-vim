# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="binoy"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

source $ZSH/oh-my-zsh.sh
binoy() {cd "$(echo "$@")"; }
eval "$(fasd --init auto)"
# Customize to your needs...

alias mu='mpc vagrant up'
alias ms='mpc vagrant ssh'
alias mx='/Users/binoy/Work/mx'
alias ma='/Users/binoy/Work/mx/wrkspace/android-xmac'
alias mxv='/Users/binoy/Work/mx/valimo-showcase'
alias bi='bundle install --path vendor/bundle'
alias rs='bundle exec rails s'
alias mys='mysql -uroot -pmobme123'
alias myss='mysql.server start'
alias rvmj='rvm use jruby-1.7.2'
alias rvmm='rvm use ruby-1.9.3-p194'
alias 'gdf'='nocorrect git diff --color'
alias v='f -e mvim'
#export PATH=/Applications/SenchaSDKTools-2.0.0-beta3/:$PATH
export PATH=/Users/binoy/:$PATH
#export PATH=/Applications/LibreOffice.app/Contents/MacOS/:$PATH
#export SENCHA_SDK_TOOLS_2_0_0_BETA3=/Applications/SenchaSDKTools-2.0.0-beta3/
export CC=gcc-4.2
export LANG=en_US.UTF-8 
#export PATH=/usr/local/bin:$PATH
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#export PATH=/Users/binoy/.rvm/gems/ruby-2.1.5/bin:$PATH


