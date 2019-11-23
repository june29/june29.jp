+++
title = "システムコマンドをランチャーに登録"
date = "2006-09-20T13:33:45+09:00"
slug = "register-system-commands-to-launcher"
draft = false

+++

<p>設定メモ．OSはWindows XP Professional Edition．</p>
<p>コマンドランチャー<a href="http://cspace.s2.xrea.com/software/bluewind/index.php" target="_blank">bluewind</a>を使っています．プログラムを起動したりよく使うフォルダを開いたりするときには，bluewindを利用します．もうコマンドランチャーなしでは生きていけない体になってしまいました．最近はシステムコマンドもbluewindから起動するようになって，ますます便利に使えています．</p>
<ul>
<li>control: コントロールパネル</li>
<li>appwiz: アプリケーションの追加と削除</li>
<li>taskmgr: タスクマネージャ</li>
<li>desk: 画面のプロパティ</li>
<li>sysdm: システムのプロパティ</li>
<li>calc: 計算機</li>
<li>mspaint: ペイント</li>
</ul>
<p>これらの実行ファイルは「C:\WINDOWS\system32\」にあります．また，アイコン「C:\WINDOWS\System32\shell32.dll」を参照して各コマンドに適切なアイコンを割り当てると，より使いやすくなります．</p>
<p>Thanx to:</p>
<ul>
<li><a href="http://www.1or0.net/contents/run_dialog.htm" target="_blank">1or0 パソコン初心者脱出-ファイル名を指定して実行</a></li>
</ul>
<p>(追記)</p>
<p>マイコンピュータをbluewindから呼び出すための設定を以下に示します．</p>
<p><a href="http://www.flickr.com/photos/june29/248077035/" title="Photo Sharing"><img src="http://static.flickr.com/82/248077035_85d888984a_o.jpg" alt="bluewindにマイコンピュータを" /></a></p>
<p><a href="http://www.flickr.com/photos/june29/248077036/" title="Photo Sharing"><img src="http://static.flickr.com/91/248077036_ff84c611d5_o.jpg" alt="bluewindにマイコンピュータを" /></a></p>
<p>explorerコマンドに引数「/e,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}」を与えて実現します．</p>
