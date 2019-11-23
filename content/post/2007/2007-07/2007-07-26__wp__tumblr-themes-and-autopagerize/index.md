+++
title = "tumblrのテーマとAutoPagerize"
date = "2007-07-26T11:45:58+09:00"
slug = "tumblr-themes-and-autopagerize"
draft = false

+++

<p>tumblrのことばっかり考えているよ．ゴメンなさい．</p>
<p>ってところまで書いて下書きを保存していたんだけど，今は<a href="http://ustream.tv/" target="_blank">Ustream</a>のことも考えている．今年に入ってからの，Web利用のスタイルの変化は凄まじい．余談でした．</p>
<p>ちょっと前に，<a href="http://themes.cameron.io/" target="_blank">cameron i/o tumblr themes</a>というtumblrのステキなテーマを配布しているサイトを知ったので，使わせてもらうことにしました．</p>
<p><a href="http://themes.cameron.io/" title="cameron i/o tumblr themes" target="_blank"><img src="http://mozshot.nemui.org/shot/large?http://themes.cameron.io/" alt="cameron i/o tumblr themes" hspace="4" vspace="4" border="0" /></a><a href="http://themes.cameron.io/" title="cameron i/o tumblr themes" target="_blank"><strong>cameron i/o tumblr themes</strong></a></p>
<p>ところが！このテーマは<a href="http://swdyh.infogami.com/autopagerize" target="_blank">AutoPagerize</a>に対応していないんですよね… こりゃあ参った！ 「<a href="http://la.ma.la/blog/diary_200706082037.htm" target="_blank">フィード吐いてないサイトなんか</a>」のノリで「AutoPagerizeが動かないtumblogなんて」って言われたら泣きそうなので，焦って対応しました．ボクは<a href="http://banner.tumblr.com/" target="_blank">Banner Year</a>というテーマを使わせてもらっていて，こいつのフッターが悪さをしていたのでヘッダーの方に移動しました．最初，フッターを削除したんだけど，テーマを配布してくれているサイトさんにリンクを張らないのはイヤだったので移動にしました．</p>
<p>AutoPagerizeのソースを読んだり，<a href="http://d.hatena.ne.jp/swdyh/searchdiary?word=%2a%5bautopagerize%5d" target="_blank">SWDYH</a>の過去のエントリから順番に更新履歴を読んだりしました．Microformatsってそういうことかー，と思ったりしました．勉強になるなあ．</p>
<p>AutoPagerizeって，海外ユーザにはどれくらい使われているんでしょうね．ボクの勝手な解釈では，日本人でuser.jsを日常的に使っている人の多くはそろそろAutoPagerize以前の世界を思い出せなくなってきている頃かと思います．もうAutoPagerizeのMicroformatsがデファクトになったらいいんじゃないかと考えています．AutoPagerizeはユーザスクリプトの枠を超えていますなあ．ユーザスクリプトって，機能で語っちゃうと「閲覧ページをゴニョゴニョする」だけですけど，もっと考えると「閲覧スタイルの提案と共有」のプラットフォームですよね．「オレはこのページはこうやってみたいんだ！絶対にこう見るべきなんだ！」って言えて，さらにそれらを簡単に共有できる．共感できる人たちは，継続してそのスタイルを使うってことです．</p>
<p>あとボクが衝撃を受けたのは<a href="http://swdyh.infogami.com/autopagerize" target="_blank">SITEINFO</a>を使うという設計です．みんなで共通に使うものは一箇所で管理する，って，どう考えても自然な考え方なんですけど，例えばボクらが以前に作った<a href="http://blog.libelabo.jp/category/greasemonkey/" target="_blank">Favicon出す系のスクリプトたち</a>は，そういう設計になっていない．「Faviconを出す」ってところは同じなんだから，「どこに出すか」だけをみんなで共有すればいいんじゃないか．好きなところに出していいよ！</p>
<p>同様に，「○○○に被はてブ数を表示するスクリプト」とかも，どこに出すかはSITEINFOで管理すればいい気がする．好きなところに出していいよ！ダメかな．こんな話を開発仲間としていたら，頭がだんだんとSITEINFO脳になってきて，どうでもいいものまで「それSITEINFOで！」とか言い出すようになったから考えるのをやめた．</p>
