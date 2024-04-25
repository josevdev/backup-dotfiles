#for ruby on rails
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#vi mode
# set -o vi

set completion-ignore-case On
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# export JAVA_HOME=$(/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home)
# export PATH=$JAVA_HOME/bin:$PATH

export CLICOLOR=1
#export LSCOLORS=EhFxBxDxCxegedabagacad
export LSCOLORS=agfxcxdxhxehhdhbagachd




# commented out when installing ruby version 2.5.3 for school senior project
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PS1="



============================================================================
\w
============================================================================
: "
#export PS1="[\[\033[44m\] \w] "

c() { cd "$@" && clear && ls -1ap; }
resize() {
  convert $1 -resize $2 new-$1
}

alias newf='touch'
alias newd='mkdir'
alias cpf='cp'
alias cpd='cp -rf'
alias ren='mv'
alias mvf='mv'
alias mvd='mv -f'
alias delf='rm'
alias deld='rm -rf'
alias ls='clear && ls -1a -F'
alias tree='clear && pwd && tree'
alias f='clear && open -a finder .'
alias finder='clear && open -a  finder .'
alias cd='clear && cd'
alias g='clear && grep -winR'
alias v='vi'
alias m='mvim'
alias view='vim -M'
alias drives='cd /Volumes && ls'
alias gitlog='git log --pretty=format:%cD__%Cred%h%Creset__%s'
alias tests='clear && c ~/Desktop/tests/'
alias docs='clear && c ~/Documents'
alias dev='clear && c /Applications/MAMP/htdocs'
alias sps='clear && c /Applications/MAMP/htdocs/single-property-sites/sps.svn/pluto/home/single/apps/singleprop/templates'
alias spsdisplay='clear && c /Applications/MAMP/htdocs/single-property-sites/sps.svn/pluto/home/single/public_html/display'
alias snips='clear && c ~/.vim/bundle/vim-snipmate/snippets/'
alias backupdotfiles='cp ~/.vimrc ~/Documents/projectz/dotfiles && cp ~/.bash_profile ~/Documents/projectz/dotfiles && cd ~/Documents/projectz/dotfiles && git status'
alias backupsnippets='cp -rf ~/.vim/bundle/vim-snipmate/snippets ~/Documents/projectz/vim-snippets && cd ~/Documents/projectz/vim-snippets && git status'
alias chrome='open -a "Google Chrome"'
alias ff='open -a "Firefox"'
alias edit='open -a "TextEdit"'
alias filesize='du -sh *'
alias b='cd ../ && ls'
alias apps='clear && c ~/Documents/projectz/apps/'
alias games='clear && c ~/Documents/projectz/games/'
alias desk='clear && c ~/Desktop'
alias down='clear && c ~/Downloads/'
alias won='networksetup -setairportpower en0 on'
alias woff='networksetup -setairportpower en0 off'
alias cheat='clear && cat ~/Documents/projectz/tools/cheat-sheet-bash.txt'
alias blog='clear && cd ~/Documents/projectz/websites/blog/ && ls -1a'
alias tags='ctags -R .'

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
#export COCOS_CONSOLE_ROOT=/Applications/cocos2d-x-3.12/tools/cocos2d-console/bin
#export PATH=$COCOS_CONSOLE_ROOT:$PATH

## Add environment variable COCOS_X_ROOT for cocos2d-x
#export COCOS_X_ROOT=/Applications
#export PATH=$COCOS_X_ROOT:$PATH

## Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
#export COCOS_TEMPLATES_ROOT=/Applications/cocos2d-x-3.12/templates
#export PATH=$COCOS_TEMPLATES_ROOT:$PATH

## Add environment variable NDK_ROOT for cocos2d-x .maybe need for Android Studio?
export NDK_ROOT=/Applications/android-ndk-r12b
export PATH=$NDK_ROOT:$PATH

## Add environment variable ANDROID_SDK_ROOT for cocos2d-x .maybe need for Android Studio?
#last commented out
#export ANDROID_SDK_ROOT=/Applications/android-sdk-macosx
#export PATH=$ANDROID_SDK_ROOT:$PATH
#export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

## Add environment variable ANT_ROOT for cocos2d-x
#export ANT_ROOT=/Applications/apache-ant-1.9.7/bin
#export PATH=$ANT_ROOT:$PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# need this to point to recent version of ruby
#export PATH="/usr/local/opt/ruby/bin:$PATH" >> /Users/jose/.bash_profile

#for Gradle, used with Apache Cordova
export PATH=$PATH:/Applications/gradle-6.6.1/bin/
