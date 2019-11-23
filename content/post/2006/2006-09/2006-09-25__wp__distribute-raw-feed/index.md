+++
title = "RSSを加工なしで配信"
date = "2006-09-25T18:05:03+09:00"
slug = "distribute-raw-feed"
draft = false

+++

<p>これまでcameraLadyのRSSフィードは画像などを含まず，改行もされていない非常に可読性の低い形で配信されていました．RSSリーダで閲覧してくれている方たちには不快な思いをさせていたことと思います．申し訳ありません．この度，フィードを加工なしで配信する方法が分かりましたので，対処しておきました．</p>
<p>また，読者さんよりアドバイスをいただきまして，今後は外部サイトへのリンクはすべて別ウィンドウで開くようにすることにします．ボクはFirefoxの拡張機能を使ってリンクはとにかく別タブに開くようにしていたので，指摘されるまで別ウィンドウ開きになっていないと気が付きませんでした．他の読者の皆さんも，cameraLadyを閲覧中に不満に思う箇所などあれば，遠慮なくお聞かせください．できるかぎり対応させていただきます．</p>
<p>これからもcameraLady並びに管理人june29をどうぞよろしくお願いします．</p>
<p>以下，変更メモ．</p>
<h3>RSSフィードを生成するwp-rss2.phpを変更</h3>
<p>the_content_rss関数に与える引数を変えるだけ．もっと早くに気が付けば良かったパターン．</p>
<p>wp-rss2.php変更前<br />
[code]< ?php the_content_rss('', 0, '') ?>[/code]</p>
<p>wp-rss2.php変更後<br />
[code]< ?php the_content_rss('', 0, '', 0, 3) ?>[/code]</p>
<p>Thanx to:</p>
<ul>
<li><a href="http://www1.atword.jp/mouse/archives/63" target="_blank">WordPressのRSSを全文配信にする &#8211; PamGau::Memo</a></li>
</ul>
