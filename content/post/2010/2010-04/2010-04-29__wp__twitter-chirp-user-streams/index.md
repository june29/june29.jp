+++
title = "TwitterのChirpUserStreamsをごくごくしてみた"
date = "2010-04-29T16:27:08+09:00"
slug = "twitter-chirp-user-streams"
draft = false

+++

<p><a href="http://apiwiki.twitter.com/ChirpUserStreams" title="Twitter API Wiki / ChirpUserStreams">Twitter API Wiki / ChirpUserStreams</a></p>
<p>例によって <a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> と <a href="http://twitter.com/darashi" title="@darashi (dara) (darashi) on Twitter">@darashi</a> が「わー」「たのしー」「きゃーきゃー」と騒いでいて感化されました。身近に新しいもの好きのハイセンスな人がいると日常が刺激的で楽しいなー。</p>
<h3>ChirpUserStreamsってなーに</h3>
<p>小池さんの説明が詳しいです。</p>
<p><a href="http://ssig33.com/blog/2010-04-25-1.html" title="高密度小池 ／ User Stream 時代の Twitter の過し方">高密度小池 ／ User Stream 時代の Twitter の過し方</a></p>
<p>followings の tweets がリアルタイムで流れてくる、ってのも確かに刺激的で面白いんですが、小池さんが言うように、受信時刻がせいぜい数十秒違うくらいです。ただ、この数十秒がユーザ体験にどういった変化を与えるか考えるのは有益だと思います。</p>
<p>それよりも面白いのは、followings の favorite や follow や retweet といったイベントが流れてくることです。将来的にこの API が標準化されて、クライアントアプリケーションでもこの辺りのイベントを扱えるようになると、ユーザ体験がリッチになるでしょう。</p>
<h3>お遊び</h3>
<p><a href="http://twitter.com/kei_s" title="kei-s (kei_s) on Twitter">@kei_s</a> の <a href="http://gist.github.com/373523" title="gist: 373523 - GitHub">gist: 373523</a> を参考に、10行くらいのスクリプトを書いて流れてくるものをすべて保存してみた。4月27日と4月28日の分を漏らさず取得できたので、さっくりチャートを作ってみたよ。1時間ごとの tweets 数と event 数です。<a href="http://code.google.com/intl/en/apis/charttools/" title="Google Chart Tools - Google Code">Google Chart Tools</a> はなかなか使いこなせないのだけれど、こういうときに気軽に使えて重宝しています。</p>
<p><ins>4月29日分を追加した。</ins></p>
<p><img src="http://chart.apis.google.com/chart?chs=700x200&#038;chd=t:1496,1210,710,415,212,376,373,847,976,848,1007,899,1196,1007,1078,1153,999,1346,1376,1402,1497,1611,2103,1805&#038;cht=bvs&#038;chco=ff0000&#038;chxt=x,y&#038;chxr=1,0,2000,500&#038;chds=0,2000&#038;chtt=Number+of+tweets+(27,+April)" alt="Number of tweets (27, April)" /></p>
<p><img src="http://chart.apis.google.com/chart?chs=700x200&#038;chd=t:1554,1005,739,393,242,317,487,738,978,1017,990,945,1215,964,1061,988,1088,1185,1380,1528,1500,1697,1986,1922&#038;cht=bvs&#038;chco=ff0000&#038;chxt=x,y&#038;chxr=1,0,2000,500&#038;chds=0,2000&#038;chtt=Number+of+tweets+(28,+April)" alt="Number of tweets (28, April)" /></p>
<p><img src="http://chart.apis.google.com/chart?chs=700x200&#038;chd=t:1781,1305,988,620,304,307,411,537,718,928,1069,1113,1246,1162,1282,1202,1219,1286,1426,1278,1307,1624,2394,2228&#038;cht=bvs&#038;chco=ff0000&#038;chxt=x,y&#038;chxr=1,0,2000,500&#038;chds=0,2000&#038;chtt=Number+of+tweets+(29,+April)" alt="Number of tweets (29, April)" /></p>
<p><img src="http://chart.apis.google.com/chart?chs=750x200&#038;chd=t:296,217,173,65,45,40,65,125,219,115,149,136,293,193,217,172,180,151,198,195,345,363,339,330|189,86,212,52,17,23,106,150,93,436,195,162,100,844,353,116,244,121,470,148,294,239,183,231|41,26,16,11,7,5,5,42,32,28,50,38,41,36,44,29,26,38,29,40,32,32,54,50&#038;cht=bvs&#038;chco=ff0000,00ff00,0000ff&#038;chxt=x,y&#038;chxr=1,0,1200&#038;chds=0,1200&#038;chtt=Number+of+favorites,+follows,+retweets+(27,+April)&#038;chdl=favorites|follows|retweets" alt="Number of events" /></p>
<p><img src="http://chart.apis.google.com/chart?chs=750x200&#038;chd=t:241,116,110,26,22,14,64,101,112,155,166,223,205,188,218,182,186,193,274,261,213,294,338,276|119,137,89,22,28,7,58,45,91,105,73,166,207,213,327,790,721,201,135,126,178,180,350,226|20,14,5,5,4,1,4,13,26,20,37,49,36,37,33,32,38,40,43,64,45,41,58,46&#038;cht=bvs&#038;chco=ff0000,00ff00,0000ff&#038;chxt=x,y&#038;chxr=1,0,1200&#038;chds=0,1200&#038;chtt=Number+of+favorites,+follows,+retweets+(28,+April)&#038;chdl=favorites|follows|retweets" alt="Number of events" /></p>
<p><img src="http://chart.apis.google.com/chart?chs=750x200&#038;chd=t:285,210,148,140,171,86,86,136,120,152,153,197,243,196,172,143,180,170,194,234,238,261,410,330|1129,298,139,64,49,114,25,286,56,97,196,416,120,337,86,161,334,112,91,105,97,259,244,277|32,26,28,7,5,1,1,15,29,28,30,28,44,34,32,25,24,34,42,44,31,51,56,72&#038;cht=bvs&#038;chco=ff0000,00ff00,0000ff&#038;chxt=x,y&#038;chxr=1,0,1200&#038;chds=0,1200&#038;chtt=Number+of+favorites,+follows,+retweets+(29,+April)&#038;chdl=favorites|follows|retweets" alt="Number of events" /></p>
<p>一応の考察。</p>
<ul>
<li>tweet 数は、日本人の活動時間を反映しているように見える。昼休みもちょっと見える</li>
<li>favorite 数は、だいたい tweet 数と同じ推移の形に見える</li>
<li>follow 数は、時間帯に関係が薄いように見える</li>
<li>retweet 数は、総じて少ない。ちなみにこれは、いわゆる公式 ReTweet の数。非公式が愛用されているのだろう</li>
</ul>
<p>ほいで、全体を貫いて最も重要だと思っていることは「これは、あくまでも @june29 の見ているタイムラインのお話にすぎない」ということ。Web エンジニアや技術好き、新しいもの好きのユーザを中心に、1500人ほどを follow しているボクの見ている世界は、こんな形をしている。それ以上のことは言えない。きっと、他の人のタイムライン、ユーザストリームは、また違った形をしていて、ユーザ間で比較したときにようやく本格的な考察ができるのだろう。</p>
<h3>まとめ</h3>
<p>ChirpUserStreams をごくごく飲んで遊んでみたよ。いついなくなるか分からない子だけれど、もうちょっと遊ばせておいてほしいな。他のユーザさんから見えるタイムラインがどんな形をしているか見てみたい。楽しそう。</p>
