+++
title = "チームの日直管理用にruboty-rotationをつくった"
date = "2015-06-20T08:28:21+09:00"
slug = "082821"
draft = false
og_image = "post/2015/06/20/082821-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/2015/06/20/082821"

+++

<p><a href="https://github.com/june29/ruboty-rotation">https://github.com/june29/ruboty-rotation</a></p>

<p>チームに日直制度が導入されて、この日の突発作業はこの人が担当、みたいなやつを試運転している。概ね良好。日直制自体は順調で、続いて「今日の日直は誰だっけ？」問題が出てきたので、チームのコミュニケーションの中心にある Slack で確認できるように、Ruboty に教えてもらえるようにした。</p>

<p>ruboty-rotation が提供するのは、単なる循環リストの操作 <a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> です。これと ruboty-cron/ruboty-alias あたりを組み合わせることで、毎日、担当者がひとりずつズレていって「ruboty 日直」って話しかけると「今日の日直は june29 です」って返してくれる、って感じのことを実現できる。祝日対応は面倒で無視したので、ローテーションに「ひとつ進める」とあわせて用意した「ひとつ戻す」の <a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> を使って、祝日の翌日の営業日には担当をひとつ巻き戻してあげよう。レアケースには雑に対処するぞ。</p>
