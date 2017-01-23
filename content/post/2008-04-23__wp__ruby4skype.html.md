+++
title = "Windows上のSkypeをRubyから操作する"
date = "2008-04-23T00:57:57+09:00"
slug = "ruby4skype"
draft = false

+++

<p>Skype って API があったんですねぃ．IRC や IM (Jabber) と違って，ボットを作ったりできないものだと思っていましたが，ただボクが実例を見たことがなかっただけでした．Ruby4Skype を使うと Ruby から簡単に操作できました．ただしこれは Windows 上の Skype しか操作できないようです．</p>
<ul>
<li><a href="http://rubyforge.org/docman/view.php/4599/3509/doc.html">Ruby4Skype: インストールと仕様</a></li>
<li><a href="http://rubyforge.org/docman/view.php/4599/3510/ref.html">Ruby4Skype: クラスとメソッド一覧</a></li>
</ul>
<p>社内のエンジニアチームでは Skype のグループチャットを常用することになったので，何かあったらそこに通知する Skype ボットを作りました．用意するものは「自分用の Skype アカウント」「ボット用のアカウント」「Windows 機1台」です．もちろん Ruby の実行環境も必要です．</p>
<p>ボット用アカウントから自分の Skype アカウントに話しかけるシンプルなプログラムはこんな感じ．Skype を起動してボット用アカウントでサインインした状態で実行する．</p>
<pre>
require 'rubygems'
require 'skypeapi'

SkypeAPI.init
SkypeAPI.attachWait

SkypeAPI.searchFriends.each do |user|
  if user.getHandle == 'june29'
    chat = SkypeAPI::Chat.create(user)
    SkypeAPI::ChatMessage.create(chat, "Hello, World!")
  end
end
</pre>
<p>社内チャットのように，決まった場所に通知する場合はチャットをブックマークしておくとアクセスしやすくなります．</p>
<pre>
chat = SkypeAPI.searchBookMarkedChats[0]
</pre>
<p>最後に，エコーボットのサンプルです．チャットメッセージの受信時に，そのメッセージの内容をそのまま返す処理をします．</p>
<pre>
# chat を適当に用意して

SkypeAPI::ChatMessage.setNotify :Status, 'RECEIVED' do |chatmessage|
  SkypeAPI::ChatMessage.create(chat, chatmessage.getBody)
end

loop do
  SkypeAPI.polling
  sleep 0.123
end
</pre>
<p>受信したメッセージの内容に応じて発言内容を変える処理を実装すれば，簡単な検索ボットなんかがすぐに作れちゃいますね．色々と遊んでみよう！</p>
