+++
title = "インターネット日本地図"
date = "2006-09-08T02:44:58+09:00"
slug = "as-network"
draft = false

+++

<p>授業の課題で「インターネット日本地図」を作りました．詳細については面倒なので説明しません．それにしても授業やレポートが野暮ったくて仕方ありません．授業やレポートのために研究の時間が削れてしまうのはイヤだな．誰か良い解決策を知っていたら教えてください．</p>
<p><a href="http://www.flickr.com/photos/june29/236964361/" title="Photo Sharing"><img src="http://static.flickr.com/84/236964361_9f3b396826.jpg" alt="JP AS Network" /></a></p>
<p>シードとなるASを与えて，そこから幅優先で探索しました．情報が公開されていない分についてはunknown扱いで済ませてあります．表示は<a href="http://www.graphviz.org/">Graphviz</a>に任せました．Graphvizの描画レイアウトはいくつかあって「dot」「neato」「twopi」「fdp」「circo」を試しました．上の画像は「fdp」で出力したもの．「dot」「neato」「twopi」で出力したものはごちゃごちゃになってしまって使えませんでした．「circo」レイアウトはしばらく結果が返ってこなかったのであきらめました．どんなレイアウトかな．</p>
<p>久しぶりにPerlのプログラムとかシェルスクリプトとか書きました．作業自体は楽しかったです．もう少し手間をかけて可視化をガンバりたかったのですが，学会発表を目前に控えていたので作業はほどほどにしておきました．寝る前に発表資料を見直しておこう．</p>
