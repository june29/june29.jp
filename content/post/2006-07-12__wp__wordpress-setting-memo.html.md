+++
title = "設定あれこれメモ"
date = "2006-07-12T17:15:19+09:00"
slug = "wordpress-setting-memo"
draft = false

+++

<p>WordPressまわりをちょこちょこいじったのでメモしておきます．やったことリスト．</p>
<ul>
<li>日付の表示を英語表記に変更</li>
<li>サイドバーのボックスのタイトルを英語表記に変更</li>
<li>WP-Amazonの導入</li>
<li>UltimateTagWarriorの導入</li>
<li>FeedBurnerのフィード設定を変更</li>
</ul>
<h3>日付の表示を英語表記に変更</h3>
<p>ボクは「2006年7月12日」よりも「July 12th, 2006」という表記の方が好きなので， wp-includes/locale.phpを書き換えて英語表記になるようにしました．WordPress Japanのフォーラムを見ながら作業しました．</p>
<p><a href="http://phpbb.xwd.jp/viewtopic.php?p=1433&#038;">WordPress Japan :: トピックを表示 &#8211; 日付、曜日の英語表記について</a></p>
<p>しかしこの変更を行うと，サイドバーのArchivesの欄が「2006年 July」のように和洋折衷な表示になってしまうので，これを解決するためにwp-includes/template-function-general.phpの336行目～341行目に変更を加えました．コメントアウトされている部分と，そうでない部分を入れ替えただけです．sprintfの中で「%dN」となっている部分が「○○年」に置き換わるので，恐らく日本語化のときにコメントアウトされたと思われる方のコメントアウトを外しました．<br />
[code]if ( $show_post_count ) {<br />
$text = sprintf(&#8216;%s %d&#8217;, $month[zeroise($arcresult->month,2)], $arcresult->year);<br />
//$text = sprintf(&#8216;%dN %s&#8217;, $arcresult->year, $month[zeroise($arcresult->month,2)]);<br />
$after = &#8216; (&#8216;.$arcresult->posts.&#8217;)&#8217; . $afterafter;<br />
} else {<br />
$text = sprintf(&#8216;%s %d&#8217;, $month[zeroise($arcresult->month,2)], $arcresult->year);<br />
//$text = sprintf(&#8216;%dN %s&#8217;, $arcresult->year, $month[zeroise($arcresult->month,2)]);<br />
}[/code]</p>
<h3>サイドバーのボックスのタイトルを英語表記に変更</h3>
<p>「ページ→Pages」といった具合に，サイドバーのボックスのタイトルを英語表記に直しました．sidebar.phpを書き換えるだけでほぼOKです．「ブログロール→Links」だけはwp-includes/links.phpの変更が必要でした．仕組みがよく分かりません．</p>
<p>変更前<br />
[code]echo &#8216;    </p>
<li id="linkcat-' . $cat['link_category'] . '">
<h2>&#8216; . $cat[&#8216;cat_name&#8217;] . &#8220;</h2>
<p>\n\t</p>
<ul>\n&#8221;;</ul>
</li>
<p>[/code]<br />
変更後<br />
[code]echo &#8216;    </p>
<li id="linkcat-' . $cat['link_category'] . '">
<h2>&#8216; . &#8220;Links&#8221; . &#8220;</h2>
<p>\n\t</p>
<ul>\n&#8221;;</ul>
</li>
<p>[/code]</p>
<h3>WP-Amazonの導入</h3>
<p>このブログでは書評も書くつもりなので，Amazonとの連携は必須です．はてなダイアリーでいう「はまぞう」の機能を使うために，プラグインWP-Amazonを導入しました．</p>
<p><a title="WP-Amazon Plugin 日本語対応版" href="http://wordpress.xwd.jp/files/wp-amazon.zip">WP-Amazon Plugin 日本語対応版</a></p>
<p>Amazon.co.jpでの検索結果から，商品の画像を簡単に挿入できるようにしてくれます．デフォルトでは挿入した画像はテキストが回りこむようになっていますが，wp-admin/wp-amazon.phpからこの部分を削除し，表示位置は投稿時に決められるようにしました．また，画像の枠は表示しないようにしておきました．</p>
<p>変更前<br />
[code]html = &#8216;<a href="'+url+'" title="View product details at Amazon"><img src="'+imgurl+'" style="float: left; margin: 0 10px 0 0;" alt="'+prodname+'" /></a>&#8216;;[/code]<br />
変更後<br />
[code]html = &#8216;<a href="'+url+'" title="View product details at Amazon"><img src="'+imgurl+'" style="border: none; margin: 0 10px 0 0;" alt="'+prodname+'" /></a>&#8216;;[/code]</p>
<h3>UltimateTagWarriorの導入</h3>
<p>各エントリにタグをつけて整理するために，プラグインUltimate Tag Warriorを導入しました．サイドバーにTag Cloudを表示させるのは憧れです． このプラグインも日本語化されたものがあり，とても助かっています．</p>
<p><a href="http://wp.mmrt-jp.net/plugin-japanization-project/20x/wp20-ultimatetagwarrior/">UltimateTagWarrior 日本語版 « MMRT daily life</a></p>
<p>WordPressユーザの皆さんが口を揃えて言うように，このプラグインはかなり高機能で圧倒されてしまいます．現状，ボクもまだ不明な点が多くて設定が上手くできていません．静的URLの設定がどうにも上手くいかなくて困っています．とりあえず，各エントリにタグを付けられて，サイドバーにTag Cloud(といってもまだまだCloudっぽくない)を表示するところまではできたので，細かい設定はおいおいということにしておきます．</p>
<h4>追記</h4>
<p>静的URLの設定が上手くいきました．Tagsの設定でチェックボックスにチェックを入れた後，パーマリンク構造を更新したら上手くいきました．.htaccessは書き込み可能にしておく必要があります．次のサイトが参考になりました．感謝です．</p>
<p><a href="http://bono.s201.xrea.com/archives/165/">power source* » WP plugin: 記事にタグ付け &#8211; Ultimate Tag Warrior 1) 基本編</a></p>
<h3>FeedBurnerのフィード設定を変更</h3>
<p>このブログのフィードはFeedBurnerに登録してあります．FeedBurnerに登録すると，購読者数が分かったり，フィードに付加情報を与えたりできます．WordPressのフィードからFeedBurnerのフィードのページにリダイレクトさせるには，以下のプラグインが有効です．</p>
<p><a href="http://orderedlist.com/articles/wordpress-feedburner-plugin/">WordPress FeedBurner Plugin // Ordered List by Steve Smith</a></p>
<p>del.icio.usやflickrの新着もこのブログのフィードとして配信できちゃうんですね．ビックリです．ボクのフィードを購読してくれている皆さんには申し訳ありませんが，今後もフィードを使った実験は繰り返し行っていくつもりです．しばらくはちょこちょことフィードの内容が変わると思いますが，嫌がらずに受け止めてください．よろしくお願いします．</p>
