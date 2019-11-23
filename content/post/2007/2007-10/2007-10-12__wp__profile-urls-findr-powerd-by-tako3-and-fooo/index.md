+++
title = "tako3.comとFooo.nameのAPIを叩くユーザスクリプト"
date = "2007-10-12T05:42:56+09:00"
slug = "profile-urls-findr-powerd-by-tako3-and-fooo"
draft = false

+++

<p><a href="http://libelabo.jp/greasemonkey/profileurlsfindr.user.js">Profile URLs Findr (ver 0.20071012)</a> for Greasemonkey</p>
<p><ins datetime="2008-04-29T17:52:52+00:00"><a href="http://libelabo.jp/greasemonkey/foko3.user.js">foko3 (ver 0.20080430)</a> for Greasemonkey</ins></p>
<p><ins datetime="2008-04-29T17:57:29+00:00"><a href="http://twitter.com/pants1010">pants1010</a>さんから「動きません！」とのご指摘を受けて，全面的に書き直しました．Fooo.name の tako3 互換 API を使うようにしたり，変更点が多いというかもう別物になったのと，もともとスクリプトの名前がしっくりきていなかったこともあって，今回，新たに foko3 という名前でリリースしています．<br />
<a href="http://twitter.com/pants1010">pants1010</a>さん，ご報告ありがとうございました！</ins></p>
<p><ins datetime="2008-04-29T18:01:50+00:00">「API からのレスポンスに危険なコードは含まれない」という前提でスクリプトを作成しています．その点をご理解の上でご利用ください．</ins></p>
<p><a href="http://tako3.com/">tako3.com</a>と<a href="http://fooo.name/">Fooo.name</a>に登録している人ならすぐに分かると思います．「今見ているWebページの中の人が他にどんなページを持っているか」をリスト化して表示してくれるユーザスクリプトです．例えばボクは「http://june29.jp/」の中の人でして，tako3では<a href="http://tako3.com/http://june29.jp/">こんな感じ</a>に，Foooでは<a href="http://fooo.name/accounts/search/http://june29.jp/">こんな感じ</a>にURLが関連付けられています．</p>
<h3>スクリプトの概要</h3>
<p>デフォルトの設定では「Ctrl+m」で動き始めます．この設定に意味はなくて，たまたまボクが使っていないキーだったからそうしただけです．snj14さんの<a href="http://white.s151.xrea.com/wiki/index.php?script/SBMCommentsViewer" target="_blank">SBMCommentsViewer</a>に習ってキー設定は変えられるようにしてあります．最初は「@」で動くようにしていましたが，CtrlやAltと組み合わせないと日本語入力ON時に動かないから厄介ですね．また，テキストエリアなどの入力欄にカーソルがあるときはキーが効かないので覚えておいてください．ボクはdel.icio.usにアクセスしたときにカーソルが持っていかれているのに気付かずに動作確認のときにハマりました．</p>
<p>動き始めたスクリプトはtako3とFoooからデータを取得し，結果を画面右下のパネル上に表示します．データがなかったときは「見付かりません」って言います．パネル表示時にもう1度「Ctrl+m」(もしくは設定したキー)を押すとパネルは非表示になります．</p>
<p>もともとtako3からデータを取ってきて表示する「tako3 findr」というのを作って自分で使っていて，そんなタイミングでFoooっていうのも出てきたからまとめて扱えるようにと思って作りました．そのtako3 findrってのをベースにFoooの処理を継ぎ足しながら作ったのでソースがゴチャゴチャになりました．マズいなぁと思っています．改変等はご自由にどうぞ．責任は負いません．切腹はしません．</p>
<h3>もっとデータがたまるといいな</h3>
<p><a href="http://www.horaguchi.net/article.php/2475/">www.horaguchi.net &#8211; Fooo.name!!</a><br />
<a href="http://blog.tkmr.org/tatsuya/show/399-fooo-name-web">ソーシャルグラフ共有サイトと言うかなんと言うか、Fooo.name!!というWebサービスを作った:TKMR.blog.show</a></p>
<p>2つのサービスのそれぞれの作者さんであるhoraguchiさんとtkmrさんが言葉を交し合っているのですね！これからもっとデータの量も増えて質も高まって，さらにはユーザが利用しやすくなっていくことを願っています．ちゃんとデータがたまれば，何か面白いことができるって信じています．<a href="http://june29.jp/2007/08/16/id-integration/">過去のエントリ</a>でちょろっと夢見たりもしています．</p>
<p>先発の各種プロフィールサービスは，この動きをどう見るのかな．ちょっと覗いてみたところ，<a href="http://iddy.jp/">iddy.jp</a>には約3,000人，<a href="http://aboutme.jp/">アバウトミー</a>には約14,000人のユーザが登録している．この数字にはURLを全く登録していないユーザも含むから，使えるデータはもっと少ないんだけど，それでもかなりの数ですよね．ユーザの登録URLの一覧を取得するようなAPIは公開されていないところを見ると，目指すところが違うかもしれないから，比べるのは間違っているかもな．</p>
