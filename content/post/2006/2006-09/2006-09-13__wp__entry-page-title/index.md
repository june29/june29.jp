+++
title = "エントリページのタイトル"
date = "2006-09-13T20:39:29+09:00"
slug = "entry-page-title"
draft = false

+++

<p>これまで，このブログのエントリページのタイトルは「cameraLady ≫ Blog Archive ≫ エントリのタイトル」となっていましたが，まず「≫」を使わないように，そしてエントリのタイトルが先頭にくるように変更しました．「Blog Archive」は消し去りました．</p>
<p>幸いにもこんなブログの記事をブックマークしてくれている人が何人かいて，「ブックマークされた！」と気付くたびに嬉しくなります．特にソフトウェアのセッティングについてのエントリや，サービスのレビューのエントリがブックマークされたときには，書いておいて良かったなぁとしみじみ思います．</p>
<p>しかし，<a href="http://b.hatena.ne.jp/">はてなブックマーク</a>において気になる点がひとつありました．はてなブックマークでは，エントリのタイトルに特殊記号が入ると，どうやら文字化けしてしまうようです．場合にもよるのかな．</p>
<p><a href="http://www.flickr.com/photos/june29/242287079/" title="Photo Sharing"><img src="http://static.flickr.com/82/242287079_91d773a507_o.jpg" alt="新着ブックマークのページ" /></a></p>
<p>激しく気に入らなかったので，現在適用しているテーマのheader.phpを書き換えて，特殊記号は使わないようにしました．変更は次の通りです．</p>
<p>変更前[code]<br />
<title><br />
< ?php bloginfo('name'); ?><br />
< ?php if ( is_single() ) { ?> &raquo; Blog Archive < ?php } ?>< ?php wp_title(); ?><br />
</title><br />
[/code]</p>
<p>変更後[code]<br />
<title><br />
< ?php if ( is_single() ) ?>< ?php wp_title(' '); ?><br />
< ?php if(wp_title(' ', false)) { ?> &#8211; < ?php } ?>< ?php bloginfo('name'); ?><br />
</title><br />
[/code]</p>
<p>それからはてなブックマークのエントリページをすべて編集して正しく直しておきました．手間かかりすぎです．ちなみに，エントリのタイトルを先頭に持ってくるとSEO的にも良いみたいですね．確かに，ブログ名が最初にきていても仕方ないとは思います．</p>
<p>Thanx to :</p>
<ul>
<li><a href="http://bd.dotted.jp/archives/91/">タイトルをサイト名の前に表示 « BirDesign</a></li>
<li><a href="http://swirling.xrea.jp/archives/108/">タイトルをサイト名の前に表示 | Blog Archive | Swirling Mist</a></li>
</ul>
