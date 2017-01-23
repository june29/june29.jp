+++
title = "Plaggerメモ"
date = "2006-09-16T03:17:54+09:00"
slug = "plagger-memo"
draft = false

+++

<p>あとでちゃんと書く(後日<a href="http://june29.jp/2006/09/26/plagger/">こちら</a>に書きました)．とりあえずメモしておく．</p>
<h3>参考にさせていただいたWebサイト</h3>
<ul>
<li><a href="http://d.hatena.ne.jp/kei-s/20060621/1150843697">札幌市西区 &#8211; Plaggerをいじる</a></li>
<li><a href="http://d.hatena.ne.jp/nitsuji/20060722/1153540885">nitsujiの日記 &#8211; Plaggerでbloglines2gmailを試す</a></li>
<li><a href="http://xcezx.net/blog/development/plagger-plugin-publish-mixidiary-2.html">Piece of a Puzzle &#8211; Weblog &#8211; P::P::Publish::MixiDiary #2</a></li>
<li><a href="http://www.express.nec.co.jp/linux/distributions/knowledge/system/crond.html">cron の設定ガイド</a></li>
</ul>
<h3>やったこと</h3>
<p>手始めにBloglines2gmail.yamlを使う．みんなのブックマークをGmailにアーカイブする．1エントリが1メールになるように設定．送信先アドレスには「+plagger」を付与しておいて，これでFilterに引っ掛けてInboxに入らないようにするとともに何かしらのLabelも付けておく．これであとから検索可能になる．</p>
<blockquote><p>
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;<br />
global:<br />
  timezone: Asia/Tokyo<br />
  log:<br />
    level: info</p>
<p>plugins:<br />
  &#8211; module: Subscription::Bloglines<br />
    config:<br />
      username: USERNAME<br />
      password: PASSWORD<br />
      mark_read: 1<br />
      fetch_meta: 1</p>
<p>  &#8211; module: Filter::BreakEntriesToFeeds</p>
<p>  &#8211; module: Publish::Gmail<br />
    config:<br />
      mailto:   USERNAME+plagger@gmail.com<br />
      mailfrom: miyagawa@example.com<br />
      mailroute:<br />
        via: smtp_tls<br />
        host: smtp.gmail.com:587<br />
        username: USERNAME<br />
        password: PASSWORD<br />
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;
</p></blockquote>
<p>一定感覚でplaggerを実行するようcronを設定．「1時間に1回」としておいた．</p>
<blockquote><p>
>> crontab -e<br />
&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;</p>
<p>0 * * * * $PLAGGER_DIR/plagger -c $YAML_DIR/bloglines2gmail.yaml</p>
<p>&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;
</p></blockquote>
<h3>思ったこと</h3>
<ul>
<li>設定さえ済んでしまえばあとは簡単に色々できる．設定してくれたkei-sさんありがとう</li>
<li>レポートの締め切りが迫っているときに触っちゃダメ</li>
<li>研究用のデータ集めにも使えそうだと一瞬マジで惚れそう</li>
<li>それ，ソニープラザで買えるよ</li>
</ul>
