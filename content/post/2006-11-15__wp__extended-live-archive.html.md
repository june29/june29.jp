+++
title = "Archivesページを作成"
date = "2006-11-15T02:27:58+09:00"
slug = "extended-live-archive"
draft = false

+++

<p>前々から作ろうと思っていたArchivesページを作りました．けっこう苦戦したので手順をメモしておきます．</p>
<h3><a href="http://www.sonsofskadi.net/extended-live-archive/" target="_blank">Extended Live Archiveの導入</a></h3>
<p>WordPress日本ユーザの間でもかなり人気のプラグイン<a href="http://www.sonsofskadi.net/extended-live-archive/" target="_blank" >Extended Live Archive</a>を導入しました．ボクが見て回った限りでもこのプラグインを使っている人はたくさんいます．動的にArchivesを生成してくれて，日付ごと，カテゴリごと，さらにはタグごとに閲覧でき，Ajaxバリバリという素晴らしいツール．以下にボクが行った設定の手順をメモしておきます．</p>
<ol>
<li><a href="http://www.sonsofskadi.net/extended-live-archive/" target="_blank">配布サイト</a>から最新版をダウンロード</li>
<li>解凍してディレクトリごとpluginsにアップロード</li>
<li>WordPressの管理画面からプラグインの有効化</li>
<li><a href="http://wp.mmrt-jp.net/plugin-japanization-project/20x/wp20-el-archive/" target="_blank">Extended Live Archive 日本語版</a>のファイルをアップロードしたディレクトリの中にコピー</li>
</ol>
<p>ここまでが上手くいくと，管理画面のオプションに「Ext. Live Archive」の項目が追加されるはずです．さっそくオプション画面に移動すると「書き込み許可がない！」とギャーギャー喚き出したので，それっぽいディレクトリの属性を変更してから再度オプション画面にアクセスしました．今度は無事にオプションの設定項目が表示され，これでプラグインの設定は終了です．</p>
<p>Thanx to :</p>
<ul>
<li><a href="http://www.sonsofskadi.net/extended-live-archive/" target="_blank">Sons Of Skadi » Extended Live Archive</a></li>
<li><a href="http://wp.mmrt-jp.net/plugin-japanization-project/20x/wp20-el-archive/" target="_blank">Ext.Live Archive 日本語版 « MMRT daily life</a></li>
</ul>
<h3>テーマに合わせたArchivesページテンプレートを作成</h3>
<p>ボクが現在，利用させてもらっているテーマは<a href="http://www.kaushalsheth.com/fluid-solution-wordpress-theme-released/" target="_blank">Fluid Solution</a>です．このテーマのディレクトリに含まれるpage.phpを編集してarchives.phpを作りました．</p>
<p>ファイルの冒頭にテンプレート定義の記述を書き，残りの部分はそのまま使います．具体的には以下のようになります．</p>
<p>[php]<br />
< ?php
/*
Template Name: Extended Live Archives
*/
?></p>
<p>< ?php get_header(); ?></p>
<div class="content">
        < ?php if (function_exists('af_ela_super_archive')) {af_ela_super_archive();} ?>
</div>
<p>< ?php get_sidebar(); ?></p>
<p>< ?php get_footer(); ?></p>
<p>[/php]</p>
<p>contentに当たる部分にExtended Live Archiveを呼び出すための記述を書いてあるだけです．他のテーマでも同様の書き方が適用できると思います．これを使用中のテーマのディレクトリに保存し，Archivesページのテンプレートが出来上がりとなります．</p>
<p>ちなみにボクはソースをコピーしたときにシングルクォートが半角ではなくて全角になっていたため，しばらく上手くいかなくて悩む羽目になりました．なかなか上手くいかないという人がいたら，ソースをチェックしてみると良いかもしれません．</p>
<p>Thanx to :</p>
<ul>
<li><a href="http://fish1091.com/wordpress/items/576/" target="_blank">Extended Live Archive &#8211; びんさんのマジかよ〜</a></li>
</ul>
<h3>Archivesページの作成</h3>
<p>いよいよArcihvesページそのものを作ります．まずはページ作成画面に移動します．ここからが重要です．タイトルと投稿スラッグは適当に決めます．ページテンプレートには先ほど作成したテンプレート「Extended Live Archives」を指定し(下部画像参照)，ページの投稿内容は</p>
<p>[php]< ?php af_ela_super_archive(); ?>[/php]</p>
<p>のみとします．このとき，投稿内容のPHPのソースコードを解釈して実行してくれる環境が必要になります．ボクは<a href="http://www.nosq.com/blog/2006/01/runphp-plugin-for-wordpress/" target="_blank">runPHP Plugin</a>を導入して対応しました．</p>
<p><a href="http://www.flickr.com/photos/june29/297414369/" title="Photo Sharing"><img src="http://static.flickr.com/118/297414369_1e8faf6303_o.jpg" alt="Archivesページ作成" /></a></p>
<p>最後に作成したページを公開すればArchivesページの完成です．</p>
<p><a href="http://june29.jp/archives/" target="_blank">Archives &#8211; cameraLady</a></p>
<p>まだページを作成しただけでスタイルも何もいじっていません．表示崩れも多発してひどい状態ですが，手を入れる時間ができるまでは放置です．このサイトのお客さまには謝っておきます．ゴメンなさい．<br />
しかしこうしてArchivesを見てみると… カテゴリやタグの使い方が下手だなぁと思わされます．整理する時間も作らなくちゃいけません．</p>
<h3>おまけ : <a href="http://www.nosq.com/blog/2006/01/runphp-plugin-for-wordpress/" target="_blank">runPHP Plugin</a>の導入</h3>
<p>配布元からダウンロードして解凍してプラグインディレクトリにアップロードして有効化すれば動きます．記事･ページの投稿画面のサイドバーに「run PHP code?」のチェックボックスが表示されるようになるので，必要なときにチェックを入れます．</p>
