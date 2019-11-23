+++
title = "AutoPagerizeのFORCE_TARGET_WINDOW"
date = "2007-10-04T20:31:59+09:00"
slug = "autopagerize-force-target-window"
draft = false

+++

<p>ボクの見える範囲で立て続けに2件，AutoPagerizeのFORCE_TARGET_WINDOWにまつわる問題が起きていたので，エントリを立てることにした．<a href="http://www.google.com/search?hl=ja&#038;q=FORCE_TARGET_WINDOW" target="_blank">FORCE_TARGET_WINDOW &#8211; Google 検索</a>を眺めてみた感じ，既出と言われればその通りの話題のようだけど，誰かひとりの役にでも立てばいいと，そんなスタンスで書こう．</p>
<p>AutoPagerizeでページの継ぎ足しが起こると，閲覧ページ内のすべてのリンクに「target=&#8221;_blank&#8221;」が加えられる．つまり，別ウィンドウや別タブで開くようになるってことだ．<a href="http://d.hatena.ne.jp/swdyh/20070425/1177499753" target="_blank">AutoPagerize0.0.7</a>でこの仕様が取り入れられたようで，現行のバージョン0.0.14でもスクリプト冒頭で宣言される「FORCE_TARGET_WINDOW」の値が「true」になっていると，このような挙動になる．</p>
<p>例えばAutoPagerizeが動いている状態でGoogleで何かを検索し，検索結果の3ページ目にあるリンクをクリックし，同一のタブ(もしくはウィンドウ)でリンク先のページを開いたとする．そのあと検索結果のページに戻ると，そこは検索結果の3ページ目ではなく，1ページ目なのだ．<del>この「戻ったつもりが，もともといた場所に戻れない」問題を防ぐために，_blankで開くようになっているだろう．</del>AutoPagerizeの作者である<a href="http://d.hatena.ne.jp/swdyh/" target="_blank">id:swdyh</a>さん自身は，</p>
<blockquote><p>
リンクをどう開きたいかは、基本的にはユーザに任せるのがいいと思うんだけれど、<br />
AutoPagerizeでが動いてるような場合は、別ウィンドウがいいのかも、と思ってそうしてみた。<br />
別ウィンドウで開きたい、とうより、同じウィンドウでリンクを開いて戻ったときに、<br />
いっきにロードがかかるのを避けたい。<br />
だからtargetの書きかえは、AutoPagerの起動時じゃなくて、<br />
継ぎ足しロードが終ったあと。</p>
<p><a href="http://d.hatena.ne.jp/swdyh/20070425/1177499753" target="_blank"><strong>SWDYH &#8211; AutoPagerize0.0.7</strong></a>
</p></blockquote>
<p>と言っている．</p>
<p>「なんで別タブで開くんだよぅ！」と思っていた人は，Firefoxの右下の方にいるお猿さんを右クリックして「ユーザスクリプトの管理」を開いて，AutoPagerizeを編集して，FORCE_TARGET_WINDOWの値を「false」に書き換えて使いましょう．また，AutoPagerizeの新バージョンをインストールすると古いスクリプトに上書きインストールされるので，そのときも値を書き換えるのを忘れないように！</p>
<p><ins>swdyhさんよりコメントにてご指摘を頂きまして，誤った記述を削除しました．</ins></p>
