+++
title = "Heroku.comで作るRailsアプリ"
date = "2008-06-05T01:37:46+09:00"
slug = "rails-on-heroku"
draft = false

+++

<p>ひとつ前のエントリで書いた通り，<a href="http://tumblens.heroku.com/">TumbLens</a>ってアプリを Rails で作って <a href="http://heroku.com/">Heroku</a> ってサービスをホストにして動かしています．Heroku を使ってみた感想などをメモする！</p>
<p>Heroku で Rails アプリを開発する方法は大きく分けて3種類あるかと思います．</p>
<ul>
<li>Heroku の IDE 上ですべての作業を行う</li>
<li>ローカルや別の場所で開発したアプリのファイル一式を tar.gz で固めて Heroku にインポートする</li>
<li>git を使って，ローカルで開発したものを随時 Heroku に反映させる</li>
</ul>
<p>ボクはこれを機にちゃんと git を使ってみようと思ったのですが，SSH の設定がよく分からなくて上手くいかなかったので tar.gz のインポートを行いました．本当は git git したかった！基礎がない人はこれだから困りますね＞＜ tar.gz を作るときは，tmp フォルダと log フォルダは含めないようにします．</p>
<p>Heroku の IDE も本当によくできていて悪くないんだけどね，script/console とか使いたくなるから，やっぱりローカルかどっかにちゃんとした環境を用意するのがいいよ．</p>
<p>あと，これは勘違いかもしれないけれど，Heroku の IDE はキャッシュが残ると厄介だ．ソースコードを書き換えてもアプリに反映されないことがあった．ちょっと待てば解決するかもだけど，ガーッと作りたいときに，これはストレス溜まるよね．モチベーションが一気に下がっちゃう．だからやっぱり，開発環境は用意しよう．今後，IDE がよりよいものになるといいいね．</p>
<p>作ったアプリは「appname.heroku.com」でホストされることになるんだけど，これ，早いもの勝ちだよ．今回ボクは「tumblens.heroku.com」を登録したあとに色々あって一度削除したんだけど，もう一度同じ名前のアプリを作ろうとしたら「もう使われているよ！」と言われて涙目になった．サポートにメールして古いデータを消してもらおうと思って「やぁ，ボクは日本の開発者だよ．Heroku はグレートだね．リスペクトだよ」まで書いたところでリトライしたら同名アプリを作れちゃったよ．ボクと同じ状況に陥って涙目になった人は，少し待つといい．</p>
<p>Heroku でホストした Rails アプリには，body の閉じタグの直前に heroku_toolbar の JavaScript が読み込まれて，こいつが IE でエラーを起こすよ．TumbLens はそもそも Firefox での利用しか想定しないものだからいいけどね，普通の Rails アプリだとそうもいきません．困ったね．</p>