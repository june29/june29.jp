+++
title = "つい☆すたの真似をしてはてなスターの☆画像をプロフィールアイコンに変えてみた"
date = "2007-09-11T01:46:21+09:00"
slug = "replace-hatena-star-image-to-profile-icon"
draft = false

+++

<p>楽しく利用させてもらっているユーザスクリプト<a href="http://d.hatena.ne.jp/os0x/20070823/1187832762" target="_blank">os0xさん作のTwitter Star</a>が，9月11日の更新でさらにステキになりました．お星様の画像をはてなプロフィールアイコンに置き換えるようになったのです．これで，誰がポチポチしてくれたのか一目瞭然になるってことですね！</p>
<p>ソースコードをまじまじと見せてもらったところ，これはすぐに自分のブログでも利用できるなと思ったので，特に何も考えずにやってみました．具体的には，以下のソースをヘッダに記述したのです．</p>
<p>[code]<br />
        <script type="text/javascript" src="http://s.hatena.ne.jp/js/HatenaStar.js"></script></p>
<p>        <script type="text/javascript">
        <!--
                var w = typeof unsafeWindow != "undefined" ? unsafeWindow : window;
                var _bindStarEntry = w.Hatena.Star.Entry.prototype.bindStarEntry;
                w.Hatena.Star.Entry.prototype.bindStarEntry = function(se){
                        var self = this;
                        var stars = [];
                        for (var i = 0,len = se.stars.length; i < len; i++) {
                                if (typeof(se.stars[i]) == 'number') {
                                        stars.push(se.stars[i]);
                                } else {
                                        var name = se.stars[i].name;
                                        var img = w.Hatena.User.getProfileIcon(name);
                                        img.alt = name;
                                        stars.push({'img':img});
                                }
                        }
                        se.stars = stars;
                        var img = _bindStarEntry.apply(self, [se]);
                }
        // -->
        </script><br />
[/code]</p>
<p>Firefox 2 と IE 6 と Windows 版 Safari 3 で適当に表示を確認しました．Opera 9.2 でも大丈夫なようです．<a href="http://d.hatena.ne.jp/ox0x/" target="_blank">id:os0x</a>さん，ステキなスクリプトを公開してくださってありがとうございます！</p>
<h3>追☆記</h3>
<p><a href="http://d.hatena.ne.jp/hatenastar/20070913/1189628266" target="_blank">はてなスター日記 &#8211; ☆の画像がプロフィールアイコンになったブログ</a>にて取り上げていただきました！おかげさまで，たくさんのポチポチもいただけまして，とても賑やかでいい感じです！ありがとうございます！</p>
<p>また，<a href="http://b.hatena.ne.jp/mind/" target="_blank">b:id:mind</a> さんが Opera 9.2 での表示を確認してくださいました！ ありがとうございます！</p>
<h3>追☆々☆記</h3>
<p><a href="http://d.hatena.ne.jp/os0x/20070911/1189544433" target="_blank">0x集積蔵 &#8211; はてなスターの星をプロフィールアイコンに置き換えるGreasemonkey Script</a>にて<a href="http://d.hatena.ne.jp/os0x/" target="_blank">id:os0x</a>さんが補足してくださっていて，そちらに示されるスクリプトに置き換えました．</p>
