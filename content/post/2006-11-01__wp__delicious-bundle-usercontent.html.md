+++
title = "del.icio.usの未bundledタグをハイライトするuserContent.css"
date = "2006-11-01T23:39:27+09:00"
slug = "delicious-bundle-usercontent"
draft = false

+++

<p><a href="http://del.icio.us/" target="_blank">del.icio.us</a>のタグを束ねる機能「bundle」はとても便利です．ボクはタグを探しやすくするためにややムリをしながら「タグは英単語で！」としています．タグを日本語でつけてしまうと目視で探すのがとても困難になりますよね．さらに，「a」で始まるタグはbundle「A」にまとめ，他のアルファベットについても同じように管理するとさらに探しやすくなります．多くのdel.icio.usユーザの方々がbundleを上手に使っているのを見て，ボクも真似しています．</p>
<p><a href="http://del.icio.us/june29?setcount=50&#038;settagview=cloud" target="_blank">june29&#8217;s bookmarks on del.icio.us</a></p>
<p>しかしbundleは手動で設定するため，新しいタグが現れるたびにbundleの設定を更新しなければなりません．そしてタグが増えてくると，bundleに含まれていないタグを目で探すのが非常に困難になります．これはdel.icio.usのCSSが良くないからでしょう．そこでFirefoxのuserContent.cssを編集しました．</p>
<p>[css]<br />
/*<br />
 * del.icio.usのbundles編集ページでbundleに含まれないタグをハイライト<br />
 */<br />
@-moz-document url-prefix(&#8220;https://secure.del.icio.us/settings/USERNAME/tags/bundle&#8221;) {<br />
  a[class=&#8221;tag&#8221;], a[class=&#8221;tag one&#8221;], a[class=&#8221;tag ten&#8221;]{<br />
    background: #0ff;<br />
  }<br />
}<br />
[/css]</p>
<p>userContent.cssに上記の記述(USERNAMEは適宜変更)を加えることで，bundleに含まれていないタグをハイライトすることができます．これでもう，タグの海で溺れることはなくなりました．以下にスクリーンショットを載せます．</p>
<p><a href="http://www.flickr.com/photos/june29/285730739/" title="Photo Sharing"><img src="http://static.flickr.com/120/285730739_692ddc20f3_o.jpg" alt="del.icio.us bundles" /></a></p>
<p>(この例では「2006」「bookmarklet」「development」がハイライトされています)</p>
<p>del.icio.usがもっと便利で，もっとオシャレなツールでありますように！</p>
