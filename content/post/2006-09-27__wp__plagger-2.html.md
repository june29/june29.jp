+++
title = "続Plaggerいじり補足"
date = "2006-09-27T05:42:50+09:00"
slug = "plagger-2"
draft = false

+++

<p>はてなブックマークのフィードを取ってきて全文配信にするには，EntryFullTextのconfigに「force_upgrade: 1」を加えなければいけません．</p>
<p>あと，リンク先がPDFだったりするとおかしなことになるかも．コンソールを見ていると，処理がしばらく止まるのが分かります．リンク先がPPTの場合で試してみると，処理は滞らなかったけれどとんでもないメールが送られてきました．リンクURLを見て例外扱いする必要があるなぁと思い調べていたら<a href="http://q.hatena.ne.jp/1157629094#a602906" target="_blank">人力検索はてな &#8211; Plagger って何ですか？</a>のotsuneさんの回答がまさに回答でした．というわけで下記が改良版です．</p>
<p>sbm2gmail.yaml<br />
[code]<br />
global:<br />
  timezone: Asia/Tokyo</p>
<p>plugins:<br />
  &#8211; module: Subscription::Config<br />
    config:<br />
      feed:<br />
        &#8211; FEED_URL_1<br />
        &#8211; FEED_URL_2<br />
        &#8211; FEED_URL_3<br />
                 ･<br />
                 ･<br />
                 ･</p>
<p>  &#8211; module: Filter::EntryFullText<br />
    rule:<br />
      expression: $args->{entry}->link !~ m/.*\.(ppt|pdf|swf|mov)$/<br />
    config:<br />
      store_html_on_failure: 1<br />
      force_upgrade: 1</p>
<p>  &#8211; module: Filter::ResolveRelativeLink</p>
<p>  &#8211; module: Filter::Rule<br />
    rule:<br />
      module: Fresh<br />
      mtime:<br />
        path: /home/june29/plagger/cache_rule/sbm2gmail.tmp<br />
        autoupdate: 1</p>
<p>  &#8211; module: Filter::BreakEntriesToFeeds</p>
<p>  &#8211; module: Publish::Gmail<br />
    config:<br />
      mailto: you@example.com<br />
      mailfrom: you@example.com<br />
      mailroute:<br />
        via: smtp<br />
        host: localhost:25<br />
[/code]</p>
