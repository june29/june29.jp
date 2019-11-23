+++
title = "dotfilesをSubversionで管理"
date = "2007-05-17T23:16:54+09:00"
slug = "manage-dotfiles-by-subversion"
draft = false

+++

<p>1年ぐらい前から開発仲間とやろうやろう言っていたんだけど，SubversionのリポジトリをHTTPでアクセスできるようにする設定が上手くいかずにグダグダになっていた．今日の明け方，すべての設定が終わってSubversionの理解も深まったので，早速各種dotfileをSubversionで管理するようにした．</p>
<pre>
# ホームディレクトリで作業するとして
cd

# リポジトリ上にdotfilesフォルダを作成
svn mkdir http://path/to/repos/june29/dotfiles -m "create dotfiles"

# dotfilesフォルダをチェックアウト
svn checkout http://path/to/repos/june29/dotfiles ./dotfiles

# .*をdotfilesに移動
mv (いろいろ) ./dotfiles

# addしてcommit
cd ./dotfiles
svn add .bash_logout .bash_profile .bashrc .emacs .emacs.d .screenrc .zprofile .zshenv .zshrc
svn commit -m "add .files"

# 自身のホームディレクトリ上にシンボリックリンクを作成し，dotfiles内の各種ファイルを参照する
cd
ln -s ./dotfiles/.bash_profile ./dotfiles/.bashrc ./dotfiles/.emacs ./dotfiles/.emacs.d/ ./dotfiles/.screenrc ./dotfiles/.zprofile ./dotfiles/.zshenv ./dotfiles/.zshrc ./
</pre>
<p>こうしておけば，次から新しいLinux環境を整えるときにも，いつもと同じ設定をすぐに使える．楽になるだろう．</p>
