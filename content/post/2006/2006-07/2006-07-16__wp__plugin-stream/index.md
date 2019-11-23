+++
title = "プラグイン続々"
date = "2006-07-16T01:19:43+09:00"
slug = "plugin-stream"
draft = false

+++

<p>日々，WordPressのプラグインをちょこちょこいじっています．これが楽しい．新たに追加したプラグインをメモしておきます．</p>
<ul>
<li>Gravatars</li>
<li>iG:Syntax Hiliter</li>
<li>WP-AddQuicktag</li>
</ul>
<h3>Gravatars</h3>
<p><a href="http://caramel-tea.com/">caramel*vanilla</a>さんの記事<a href="http://caramel-tea.com/2006/06/gravatar/">caramel*vanilla » みんなGravatarに登録すればいいと思う</a>を読んで知った<a href="http://www.gravatar.com/">Gravatar</a>です．ボクも登録しています．</p>
<p>Gravatarに登録すると，自分のメールアドレスと画像を関連付けて扱ってくれるようになります．WordPressのプラグイン<a href="http://www.skippy.net/blog/2005/03/24/gravatars/">Gravatars</a>を使うと，ブログのコメント欄で入力されたメールアドレスから画像を取ってきて表示してくれるようになります．今はまだ，ただ導入しただけの状態なので画像の表示位置やサイズがとても不細工ですが，もっときちんと設定するつもりです．</p>
<p>導入はとても簡単です．ファイルをプラグインディレクトリにアップロードしたあとでプラグインを有効化し，適用テーマのcomment.phpに以下の変更を加えるだけです．</p>
<p>変更前<br />
[code]< ?php foreach ($comments as $comment) : ?>[/code]</p>
<p>変更後<br />
[code]< ?php foreach ($comments as $comment) :
   if (function_exists('gravatar')) {
      if ('' != get_comment_author_url()) {
         echo "<a href='$comment->comment_author_url&#8217; title=&#8217;Visit $comment->comment_author&#8217;>&#8221;;<br />
      } else {<br />
         echo &#8220;<a href='http://www.gravatar.com' title='Create your own gravatar at gravatar.com!'>&#8220;;<br />
      }<br />
      echo &#8220;<img src='";
      if ('' == $comment-/>comment_type) {<br />
         echo gravatar($comment->comment_author_email);<br />
      } elseif ( (&#8216;trackback&#8217; == $comment->comment_type) || (&#8216;pingback&#8217; == $comment->comment_type) ) {<br />
         echo gravatar($comment->comment_author_url);<br />
      }<br />
      echo &#8220;&#8216; alt=&#8217;a gravatar&#8217; class=&#8217;gravatar&#8217; /></a>&#8220;;<br />
   }<br />
?>[/code]</p>
<p>Web上で個人が特定されるような仕組みは今後も増えていくと思います．Gravatarのようなサービスは面白いですね．Gravatarsはスパムコメントの抑制にも役立ちそうです．皆さんもぜひ，Gravatarに登録してみてください．</p>
<h3>iG:Syntax Hiliter</h3>
<p><a href="http://blog.igeek.info/wp-plugins/igsyntax-hiliter/">iG:Syntax Hiliter</a>はエントリにプログラムのソースコードを載せたいときに役立つプラグインです．カスタマイズの記録のためには必須の機能になりそうです．先述のGravatarsの説明時にも活用しています．ソースを解釈して色付けしてくれるのも嬉しいです．使い方はいたってシンプル．本文中で［code］と［/code］で囲まれた部分がソースコードになります．</p>
<p><a href="http://wp.mmrt-jp.net/">MMRT daily life</a>さんで<a href="http://wp.mmrt-jp.net/plugin-japanization-project/20x/wp20-ig_syntax_hilite/">日本語化されたもの</a>が公開されていたので，これを使わせてもらっています．感謝です．</p>
<h3>WP-AddQuicktag</h3>
<p>これまではエントリの投稿時にWordPress標準のリッチテキストエディタを使っていましたが，細かい変更を加えたいときにいちいちHTMLを開いて編集するのが面倒なので，リッチテキストエディタはOFFにしました．代わりにこの<a href="http://roel.meurders.nl/wordpress-plugins/wp-addquicktag-plugin-for-adding-quicktags/#download">WP-AddQuicktag</a>を導入し，投稿時に役立てています．</p>
<p>WP-AddQuicktagを使うと，頻繁に使用するHTMLタグを予めボタンとして登録しておくことができます．ボクは＜h3＞やiG:Syntax Hiliterの［code］，＜center＞などを登録しています．これは便利です．</p>
