+++
title = "Google Sitemap Generator for WordPress"
date = "2006-10-08T00:09:17+09:00"
slug = "google-sitemap-generator-for-wordpress"
draft = false

+++

<p>先日，<a href="http://june29.jp/2006/10/06/google-web-master-tool/" target="_blank">Googleウェブマスターツール</a>というエントリで書いた通り，ウェブマスターツールを導入しました．その際，サイトマップは手順に従って作成したのですが，何やら便利なプラグインがあると知って試してみました．Google Sitemap Generator for WordPressの紹介です．</p>
<p><a href="http://www.arnebrachhold.de/2005/06/05/google-sitemaps-generator-v2-final" target="_blank">Google Sitemap Generator for WordPress v2 Final</a>からプラグインファイルをダウンロードし，例によって解凍してpluginsディレクトリにアップロードします．ファイルの中に日本語の言語ファイルもしっかりと含まれているので，自分のサイトの文字コードに合ったものをアップロードします．ボクは下記の4ファイルをwp-content/plugins/sitemap.incl.langにアップロードしました．</p>
<ul>
<li>sitemap-ja_JP.UTF-8.mo</li>
<li>sitemap-ja_JP.UTF-8.po</li>
<li>sitemap.php</li>
<li>sitemap.pot</li>
</ul>
<p>それから，やはり例によって管理画面からプラグインを有効化します．そうするとオプションにSitemapの項目が追加され，この画面から各種設定を行えるようになります．設定が済んだら所定の場所に空で良いのでsitemap.xmlとsitemap.xml.gzを書き込み可能な状態で設置し，設定内容をファイルに書き出します．あとはGoogleウェブマスターツールの管理画面からサイトマップの追加を行うだけです．</p>
<p>WordPressって本当に便利！「こんなプラグインがあったらいいなぁ」は多くの場合，すでに実装されています．作者の皆さんには感謝するばかりです．どうもありがとうございます．</p>
<h3>Thanx to</h3>
<ul>
<li><a href="http://phpbb.xwd.jp/viewtopic.php?t=281" target="_blank">WordPress Japan :: トピックを表示 &#8211; Google Sitemap Generator for WordPress</a></li>
<li><a href="http://kohizuka.ddo.jp/blog/2006/04/29/16" target="_blank">» Google Sitemap　ってなに？　メモ帳であり備忘録でありブログであり・・・</a></li>
</ul>
