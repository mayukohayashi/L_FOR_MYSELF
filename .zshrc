export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

autoload -U compinit
compinit

host name
PROMPT="%{$fg[white]%}%n@%{$fg[green]%}%m%{$reset_color%} ${PROMPT}"

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 日本語ファイル名を表示可能にする
setopt print_eight_bit


# 入力しているコマンド名が間違っている場合にもしかして：を出す。
setopt correct

# '#' 以降をコメントとして扱う
setopt interactive_comments

# 色を使う
setopt prompt_subst

# ^Dでログアウトしない。
setopt ignoreeof

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups
# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# cdしたあとで、自動的に ls する
function chpwd() { ls -AF }



typeset -U path cdpath fpath manpath

path=(
    $HOME/bin(N-/)
    /usr/local/bin(N-/)
    /usr/local/sbin(N-/)
    $path
)

code () {
  VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*
}

alias ls.="find . \( -flags +hidden -or -name '.*' \) -maxdepth 1 | sed 's/^\.\/*//' | xargs ls -d"

alias sz='source ~/.zshrc'

export GIT_EDITOR=vimexport PATH="/usr/local/opt/ncurses/bin:$PATH"
