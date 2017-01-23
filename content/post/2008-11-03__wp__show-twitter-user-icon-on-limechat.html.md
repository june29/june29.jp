+++
title = "LimeChatにTwitterのアイコンを表示させてみる"
date = "2008-11-03T04:23:29+09:00"
slug = "show-twitter-user-icon-on-limechat"
draft = false

+++

<h3>マイクロブログとIRC</h3>
<p>いわゆるマイクロブログと呼ばれるサービスの多くは，<a href="http://coderepos.org/share/browser/lang/ruby/net-irc/trunk/examples">tib.rb 等</a>を利用させてもらって IRC クライアントで楽しんでいます．設定したキーワードを含むメッセージをハイライトしてくれる機能や，IRC プロキシと合わせたほぼ完璧なロギングが嬉しいです．Twitter のログを対象とした grep がないと毎月の勤務時間表を書けないほどです…！素晴らしいツールを開発されている皆さんには感謝しまくりです．ありがとうございます．</p>
<p>数多ある各種 Twitter クライアントと比べて寂しい点は，アイコンが表示されないことぐらいでしょうか．友人は「アイコンが出ればなぁ」と嘆いていました．</p>
<h3>usericons</h3>
<p><a href="http://d.hatena.ne.jp/swdyh/">id:swdyh さん</a>による <a href="http://usericons.relucks.org/">usericons.relucks.org</a> がこれまたステキで，サービス名とユーザ名を与えるとアイコンの URL を教えてくれるシンプルなサービスです．例えば Twitter のボクのアイコンの URL を知りたければ</p>
<pre>
http://usericons.relucks.org/twitter/june29
</pre>
<p>にアクセスすればよいわけですね．</p>
<h3>LimeChatの中でusericons</h3>
<p>ここからが本題．<a href="http://github.com/psychs/limechat/tree/master">LimeChat for OSX</a> を git clone で落としてきて，HTML を組み立てている ruby/view/log.rb に</p>
<pre>
&lt;img src="http://usericons.relucks.org/twitter/#{line.nick_info}" /&gt;
</pre>
<p>をねじ込ませてから，Xcode でビルドしてみました．Xcode は全然分からない．Cocoa とかさっぱり．Ruby のコードだったからかろうじて部分的に読めた．</p>
<p>LimeChat の中に Twitter ユーザのアイコンを表示できました．めでたしめでたし．</p>
<p><img src="http://img.skitch.com/20081102-c7gper8njke7fj1fdgngsacfbh.png" alt="(june29) @#Twitter@twitter"/></p>
<p>usericons にリクエスト投げまくりですし，とてもムリヤリな方法なので実用には耐えそうもありません．遊んでみました，ってエントリです．</p>
