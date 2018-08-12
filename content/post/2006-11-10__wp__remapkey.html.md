+++
title = "Remapkeyでキーバインドカスタマイズ"
date = "2006-11-10T15:38:45+09:00"
slug = "remapkey"
draft = false

+++

<p>ボクは半年ほど前からThinkPadを愛用しています．トラックポインタもすっかり手に馴染んで，かなり快適に使えています．しかし，ThinkPadには「Windowsキー」がありません(Altキーなどに割り当てることはできます)．キーがひとつ少ないということはすなわち，キーボードショートカットに割り当てられるキーの組み合わせが少ないということです．これで最近困っていました．</p>
<h4>日本語入力のON/OFFキー</h4>
<p>「全角/半角キー」を押して日本語入力のON/OFFを切り替えようとすると，左手の小指なり薬指なりをすーっと伸ばさなければいけません．ボクの指が短いからです．手をホームポジションから動かさずにこの切り替えを実現するために<a href="http://www.h5.dion.ne.jp/~pollux/" target="_blank">CmdSpace</a>というツールを使って，キー割り当てを「Ctrl+Space」にしていました．</p>
<h4>コマンドランチャーbluewindの呼び出しキー</h4>
<p><a href="http://cspace.s2.xrea.com/software/bluewind/index.php" target="_blank">bluewind</a>を使っている人の多くは「Windowsキー+Space」を呼び出しキーにしていると思います．ところがThinkPad使いのボクは「Ctrl+B」にしていました．「Ctrl+Space」は上述の日本語入力ON/OFFに当てているので「Space」の代わりにbluewindの頭文字の「B」にしていました．</p>
<h4>ショートカットキーの競合</h4>
<p>最近になって「Ctrl+Space」も「Ctrl+B」も他のショートカットキーと競合するようになりました．一時的に一方のツールを終了させたりしながら我慢して使ってきましたが，いよいよもって対策を講じることにしました．</p>
<h4>Remapkeyの導入</h4>
<p><a href="http://www.microsoft.com/downloads/details.aspx?familyid=9d467a69-57ff-4ae7-96ee-b18c4790cffd&#038;displaylang=en" target="_blank">Windows Server 2003 Resource Kit Tools</a>をダウンロード，インストールし，この中に含まれる「remapkey」を実行するとGUIでキーバインドを変更できます．</p>
<p><a href="http://www.flickr.com/photos/june29/293524408/" title="Photo Sharing"><img src="http://static.flickr.com/103/293524408_b6c6261b41.jpg" alt="RemapKey" /></a></p>
<p>普段全く使っていない「無変換キー」に「Windowsキー」を割り当て，それに合わせてキーの設定も変更しました．ちなみに，もともと「Caps Lock」と「Ctrl」は入れ替えてありました．</p>
<ul>
<li>日本語入力のON/OFF : 「Windowsキー+Space」</li>
<li>bluewindの呼び出し : 「Windowsキー+N」</li>
</ul>
<p>これで現状は問題なくショートカットキーを使えるようになりました．でもその場しのぎ感が否めません… また何かのキーが衝突したときにちょこちょこ変更することになりそうです．</p>
