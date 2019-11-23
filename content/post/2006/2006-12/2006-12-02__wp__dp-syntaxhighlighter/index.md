+++
title = "dp.SyntaxHighlighter"
date = "2006-12-02T00:54:24+09:00"
slug = "dp-syntaxhighlighter"
draft = false

+++

<p>ソースコードをハイライト表示してくれる<a href="http://www.dreamprojections.com/syntaxhighlighter/" target="_blank">dp.SyntaxHighlighter</a>というツールを試してみています．<a href="http://youmos.com/news/syntax_highlighter.html" target="_blank">便利なソースコード表示用JavaScript (dp.SyntaxHighlighter) &#8211; youmos</a>で紹介されているのを見て知りました．このエントリはテスト用です．後ほど大幅変更する可能性もあります．RSSリーダで購読してくれている方は，そのつもりで読んでください．</p>
<p><textarea name="code" class="js" cols="80" rows="20"><br />
var bar = document.getElementById(&#8220;FindToolbar&#8221;);<br />
if (bar.hidden) {<br />
  gFindBar.onFindCmd();<br />
  var findField = document.getElementById(&#8220;find-field&#8221;);<br />
  findField.value = &#8221;;<br />
} else {<br />
  gFindBar.closeFindBar();<br />
}<br />
</textarea></p>
<p><a href="http://www.dreamprojections.com/syntaxhighlighter/" target="_blank">dp.SyntaxHighlighter</a>のWordPress用プラグインとして<a href="http://blog.rubypdf.com/2006/09/28/wp-dpsyntaxhighlightersource-code-syntax-highlighting-plugin/" target="_blank">WP-dp.SyntaxHighlighter</a>というものも公開されているのですが，どうも上手く動いてくれないようなので手作業でテーマファイルに記述を追加しています．表示はCSSで制御します．</p>
<p>どうやら「copy to clipboard」はFirefox 2.0では無効のようですね，残念！IE 6では機能しています．ソースコードをコピーするときは「vew plain」で開いた別ウィンドウのテキストエリア内のものをコピーしたらよいですかね．</p>
