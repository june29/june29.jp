+++
title = "Yahoo! PipesのJSONP呼び出しを利用してエントリページにソーシャルブックマークのコメントを表示"
date = "2007-05-22T04:19:08+09:00"
slug = "show-social-bookmark-comments-using-yahoo-pipes"
draft = false

+++

<p><a href="http://muumoo.jp/news/2007/05/12/0sbmcommentsapi.html" target="_blank">指定したURLに関するソーシャルブックマークのコメントをまとめて取得するAPIをYahoo! Pipesで作った(管理人日記) &#8211; むぅもぉ.jp</a></p>
<p>上記エントリにて紹介されているYahoo! PipesのAPIを利用して，エントリページに表示するブックマークコメントにはてなブックマークだけじゃなくdel.icio.usとlivedoorクリップのものも含めました．del.icio.usには指定URLのコメント一覧をJSONPで取得するAPIがないので困っていたところです．ようやくYahoo! Pipesの便利さを実感できるところまできました．</p>
<p>確認はこちらで : <a href="http://june29.jp/2006/10/18/favicon-greasemonkey/" target="_blank">色んなところにfaviconを &#8211; cameraLady</a></p>
<p>コールバック関数はこんな感じにしています．予めエントリページに「sbm」というidの空のdivを埋めておいて，そこにブックマークコメントをブチ込んでいます．</p>
<pre>
function hundleSBM(data) {
        if(data) {
                var sbmtitle = document.getElementById("sbmtitle");
                sbmtitle.appendChild(document.createTextNode("ブックマークコメント"));
                sbmtitle.style.display = "block";
                var ul = document.createElement('ul');
                for (var i=0, post; post = data.value.items[i]; i++) {
                        if(post.comment != "") {
                                var li = document.createElement('li');
                                var a = document.createElement('a');
                                a.setAttribute('href', post.link);
                                a.appendChild(document.createTextNode(post.author));
                                li.appendChild(a);
                                li.appendChild(document.createTextNode(" " + post.description));
                                ul.appendChild(li);
                                var faviconurl;
                                if(post.link.search(/^http:\/\/b\.hatena\.ne\.jp/) == 0) {
                                        faviconurl = 'http://b.hatena.ne.jp/';
                                } else if(post.link.search(/^http:\/\/del\.icio\.us/) == 0) {
                                        faviconurl = 'http://del.icio.us/';
                                } else {
                                        faviconurl = 'http://clip.livedoor.com/';
                                }
                                li.setAttribute('style', 'list-style-image: url(' + faviconurl + 'favicon.ico)');
                        }
                }
                document.getElementById("sbm").appendChild(ul);
        }
}
</pre>
<p>むぅもぉ.jpのぷーるさん，ステキなPipeをありがとうございます！自分でも色々なPipeを作ってみたくなったよ！</p>
