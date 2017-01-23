+++
title = "UbigraphでTwitterのコミュニケーションを可視化してみた"
date = "2008-09-25T03:34:15+09:00"
slug = "ubigraph-twitter-visualization"
draft = false

+++

<p><a href="http://www.ubietylab.net/ubigraph/">Ubigraph: Free dynamic graph visualization software</a> ってのを見つけて，<a href="http://www.ubietylab.net/ubigraph/content/Demos/">デモ</a>がこれまた面白くて，しかも <a href="http://blog.deadbeaf.org/2008/05/25/rubigraph/">Rubigraph</a> っていう Ruby で簡単に扱えるライブラリを mootoh さんが作ってくださっていて，テンションが上がったので遊んでみた．</p>
<p><img src="http://img.skitch.com/20080924-myesxftc5p8n5becdmawd8p67e.png" alt="twitter_visualization.swf"/></p>
<p><a href="http://june29.jp/files/twitter_visualization.swf">スクリーンキャストはこちら</a> (約3分，約10MB)</p>
<p>ボクから見える Twitter のタイムラインを可視化してみた．ちょー単純に @ メッセージでやり取りするユーザ同士をリンクしただけ．けっこう面白かった．スクリーンショットだと文字が潰れて何が何だか分からないけれど，Ubigraph ではズームしたり回転したりして細部まで見ることもできる．ノードが増えると重いけどね！</p>
<p><img src="http://img.skitch.com/20080924-bakepbargcwiyfjaf4hrhb997u.png" alt="twitter_visualization.swf"/></p>
<p>Ubigraph のサイトを見ると，もっと複雑な配置のアルゴリズムとか使えそうなことが書いてあるんだけど，まだ未完成なのかなー，ノードとリンクを作ってネットワークに追加する，ぐらいしか分からなかった．引き続き可視化系のツールは色々と試してみよう．</p>
