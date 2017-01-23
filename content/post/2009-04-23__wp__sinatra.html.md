+++
title = "Sinatraで遊んでみた"
date = "2009-04-23T02:52:45+09:00"
slug = "sinatra"
draft = false

+++

<p>ちょーお手軽に試せちゃう Web アプリケーションフレームワークであるところの <a href="http://www.sinatrarb.com/" title="Sinatra">Sinatra</a> で遊んでみました．</p>
<blockquote><p>
Sinatra is a DSL for quickly creating web-applications in Ruby with minimal effort</p>
<p><a class="quote" href="http://www.sinatrarb.com/intro.html" title="Sinatra: README">Sinatra: README</a>
</p></blockquote>
<p>&#8220;minimal effort&#8221; と謳っているのは伊達じゃなくて，Web サイトに書かれている通りに進めていけば，すぐに動くものができちゃいます．けっこうな衝撃体験でした！最初に Sinatra を知ったのは<a href="http://d.hatena.ne.jp/swdyh/20081122/1227359683" title="usericonsリニューアルとソース公開 - SWDYH">usericonsリニューアルとソース公開 &#8211; SWDYH</a>を読んだときで，でもこのときはソースコードを見てもどの部分が Sinatra の処理に当たるかよく分かりませんでした．最近になって，改めて触ってみようと思ったときに<a href="http://d.hatena.ne.jp/darashi/20090418/1240035996" title="Ruby Sapporo Night vol.10 にてSinatraのお話をしました - dara日記">Ruby Sapporo Night vol.10 にてSinatraのお話をしました &#8211; dara日記</a>があって，手を動かしてみるに至りました．</p>
<h3>習作</h3>
<p>練習用に，ということで，ボクが <a href="http://www.clovery.jp/tiarra/" title="Tiarra : Archive">Tiarra</a> のログとして貯め込んでいる Twitter のアーカイブを検索したりできるものを作ってみました．初めて触れるフレームワークなので学習コストも発生するわけですが，それでも数時間でひとまず動くモノができちゃうんだからすごいなー．</p>
<p><a href="http://github.com/june29/tiarrar/tree/master" title="june29's tiarrar at master - GitHub">june29&#8217;s tiarrar at master &#8211; GitHub</a></p>
<p><img src="http://img.skitch.com/20090422-rq1p1b18856ru54474qy8usayj.png" alt="Tiarrar"/></p>
<p>Tiarra のログファイルをパースするところは置いておくとして，Sinatra の処理に当たるコードは以下のような感じです．これだけで URL に対する挙動を割り当てられます．必要な情報だけ集めて，あとは view 側に渡してやるのですね．</p>
<pre>
get "/" do
  @groups = tiarrar.groups.keys
  @statuses = tiarrar.recent
  haml :index
end

get "/groups/:group" do
  @group = params[:group]
  @statuses = tiarrar.group(@group)
  haml :statuses
end

get "/search/" do
  @word = params[:word]
  redirect "/search/#{URI.encode(@word)}"
end

get "/search/:word" do
  @word = params[:word]
  @statuses = tiarrar.search(@word)
  haml :statuses
end
</pre>
<p>内容は</p>
<ul>
<li>「/」へのアクセスは，最近の status を表示する index のビュー</li>
<li>「/groups/:group」へのアクセスは，指定グループに含まれる人の status だけを抜き出した statuses のビュー</li>
<li>「/search」への word パラメータ付きアクセス(検索フォームの向き先がこれ)は「/search/:word」にリダイレクト</li>
<li>「/search/:word」へのアクセスは，指定の文字列を含む status だけを抜き出した statuses のビュー</li>
</ul>
<p>と，これだけです．</p>
<p>実現したい機能に対して，書かなきゃいけないコードの量が最小限で済むなぁ．もともと，Tiarra のログをブラウザから閲覧できるようにしたいとは思っていて，そうしておくと iPhone の Safari からもパッとアクセスできますしね，だけど，HTML に組み立てるのがけっこう面倒で，なかなか手が進まずにいました．</p>
<p>ボクがこれまで作ったものだと，<a href="http://tumblens.herokugarden.com/" title="TumbLens">TumbLens</a> や <a href="http://ireblog.libelabo.jp/" title="iReblog">iReblog</a> も Sinatra でキレイに置き換えられそうです．特に iReblog の方は，cgi.rb で API 部分を作っていて，設定が面倒だったりしたので，これからは Sinatra が代替になってくれそうで嬉しいです．</p>
<ul>
<li><a href="http://june29.jp/2008/06/04/tumblens-on-heroku/" title="TumbLensをHerokuにてリリース - 準二級.jp">TumbLensをHerokuにてリリース &#8211; 準二級.jp</a></li>
<li><a href="http://june29.jp/2009/01/26/ireblog/" title="iPhoneから指1本でReblogを楽しむためのWebアプリ - 準二級.jp">iPhoneから指1本でReblogを楽しむためのWebアプリ &#8211; 準二級.jp</a></li>
</ul>
<p>そうそう，cgi.rb だと小さすぎるけど，Rails だと大袈裟すぎる，Sinatra は間に入ってくれて，上手に使い分けると幸せになれますね．</p>
<h3>雑感</h3>
<p>Rails に触れたことがある，ってのが大きかったと思います．Sinatra の処理を書いているときは「Rails でいう routes.rb と controller を書いている」って感じでした．view はそのまま view ですね．今回，<a href="http://haml.hamptoncatlin.com/" title="#haml">Haml</a> に触れるのも初めてで，これまたキモカワイイなーと思ってしまいました．はむはむカワイイ！Haml は，慣れるまでは大変だけど，慣れてしまえばすいすい書けちゃいそう．each に対応する end を書いたりしてハマりました．</p>
<h3>まとめ</h3>
<p>Sinatra の世界に入門してみました．正しい使いどころで使えば強力な武器になりそうです．最初のビューまでサクッといけちゃうのがいいですね．プロトタイピングに向いていそう．Haml や Sass と合わせて活用すればさらに少ないコード量でとりあえず動くモノができちゃう．</p>
<p>Sinatra 面白いです！</p>
