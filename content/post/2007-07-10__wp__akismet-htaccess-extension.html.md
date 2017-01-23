+++
title = "スパム対策強化"
date = "2007-07-10T02:32:19+09:00"
slug = "akismet-htaccess-extension"
draft = false

+++

<p>WordPressユーザの皆さん，こんばんわ．june29です．</p>
<p>先日，WordPress仲間と「コメントスパム対策」について話す機会がありました．スパム対策プラグインAkismetは非常に優秀で，確かにほとんどのスパムコメントをきっちり弾いてくれますが，システムに負荷がかかっていることに変わりはありません．こんなに細々と運営しているcameraLadyでさえ，毎日300件ほどのスパムコメントが投稿され，その度にデータベースへのアクセスが発生していたわけです．これでは，表示が遅くなる原因にもなりますね．</p>
<p>そこで！スパム対策を強化するべく，Akismetプラグインの拡張版を試してみました．もともとのakismet.phpを拡張版のものに置き換えるだけで機能します．</p>
<p><a href="http://boakes.org/akismet-htaccess-extension" target="_blank">Akismet htaccess extension</a></p>
<p>拡張版では，下図のようにアクセスの多いIPの上位10個を管理画面に表示させてくれ，さらにその中から選択したIPをDenyするように.htaccessに記述を加えてくれます．もちろん，.htaccessは書き込み可能な属性にしておく必要があります．</p>
<p><a href="http://www.flickr.com/photos/libelabo/761715773/" title="Photo Sharing"><img src="http://farm2.static.flickr.com/1034/761715773_f6f00fb4f5_o.jpg" alt="Worst Offenders - WP Plugin" /></a></p>
<p>拡張版を導入してから，Akismetに捕らえられるスパムコメントの数は10分の1ほどに減りました！このレベルでアクセスブロックしてしまえば，WordPress側に処理が回ってこないので，負荷がかかることもないはずです．このサイトがもっと軽快になりますように…！</p>
