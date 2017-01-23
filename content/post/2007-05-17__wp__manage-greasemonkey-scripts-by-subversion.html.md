+++
title = "GreasemonkeyスクリプトをSubversionで管理"
date = "2007-05-17T23:38:28+09:00"
slug = "manage-greasemonkey-scripts-by-subversion"
draft = false

+++

<p><a href="http://june29.jp/2007/05/17/manage-dotfiles-by-subversion/" target="_blank">dotfilesをSubversionで管理</a>で書いたdotfilesに続き，GreasemonkeyのスクリプトもSubversionで管理するようにした．プロファイルフォルダのgm_scriptsの中身を丸ごと管理する．これで複数PC間で設定を統一できる．</p>
<p>ただし，更新とコミットは手動で行わなければいけない．Firefoxの拡張で，Firefoxの起動時に更新を，終了時にコミットをしてくれるようなものがあればいいと思って探してみたけれど見つからなかった．誰かが作っていそうな気はする．</p>
<p><a href="http://www.pumacode.org/projects/tsvnmenu" target="_blank">TSVN</a>っていう拡張はFirefoxからTortoiseSVNを叩いているわけだから，これを応用すれば実現できそうだ．</p>
<p>Greasemonkeyスクリプト以外に管理すべきFirefox関連のファイルは他にも山ほどある．選別しなきゃダメだな．</p>
