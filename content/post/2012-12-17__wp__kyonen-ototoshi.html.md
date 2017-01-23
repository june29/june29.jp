+++
title = "今の自分を過去の自分と並べてみるためのTwitterボットをつくったお話"
date = "2012-12-17T18:24:57+09:00"
slug = "kyonen-ototoshi"
draft = false

+++

<h3>はじめに</h3>
<p>2012年12月16日、1年前の自分のツイートを再現する<a href="https://twitter.com/june29kyonen" title="キョネ (june29kyonen) on Twitter">キョネちゃん</a>というアカウントと、2年前の自分のツイートを再現する<a href="https://twitter.com/june29ototoshi" title="オトト (june29ototoshi) on Twitter">オトトちゃん</a>というアカウントをつくった。</p>
<p>今回の作業に至った背景はいくつかあって。</p>
<p>ひとつめ。後輩であるところの<a href="http://asonas.hatenablog.com/entry/2012/12/07/041524" title="素振り - 良いあそなすちゃん">良いあそなすちゃんが「日頃から素振りをしろ」という旨のエントリを書いて</a>いて、これがけっこうガツンときて、最近の自分は素振りが足りていないなぁと感じていた。</p>
<p>素振り、本当に大事だとぼくも思う。身近なところでいうと <a href="https://twitter.com/darashi" title="Yoji Shidara (darashi) on Twitter">@darashi</a> 先輩は、きちんと素振りをできているプログラマで、いざ「なにかをつくろう！」となったときに、体があったまっているし、慣れた手付きで必要な作業をスッとこなすのでかっこいい。「カタ」が身に付いているように感じられる。著書に「自家用 Jenkins のすすめ」などがある。ない。ないけど、いつだったか「自分個人用に Jenkins をひとつ動かしておいて、いつでも使えるようにしておくとなにかと便利」と話してくれて、そういうのはいいなぁって思った。一緒に <a href="http://horesa.se/#" title="horesa.se">horesa.se</a> をつくったときも、そのあたりの頼もしさが発揮されていた。</p>
<p>ふたつめ。飲食店にひとりで入ってごちそうの登場を待っている間、本がなくて、手元に携帯式情報端末くらいしかないとき、急に10分ほどを持て余すタイミングがある。そんなとき、ふと「最近の自分は、ちゃんとやれているかなぁ、前に進めているかなぁ」なんて気持ちになって、1年前や2年前の自分のツイートを見返したりする、ちょっとした習慣があった。</p>
<p>そんなこんなで、自分のちょっとした習慣に合わせて「アプリケーションをつくって定常運用に乗せる」までをシナリオとして、久しぶりに「素振り」を楽しもうと思い立った。自分にプレゼントしたのは「休日1日」で、作業量をこの範囲にきっちり納めるように意識して臨んだ。</p>
<h3>関連研究といたしましては</h3>
<p>@mirakui さんの91日前をツイートする @mirakui_retro や、@ryopeko さんのn日前をツイートする @ryopeko_retro や、@ryopeko_wife などのボットが存在する。</p>
<blockquote class="twitter-tweet">
<p>胸から痩せるタイプだ</p>
<p>— mirakui_retro (@mirakui_retro) <a href="https://twitter.com/mirakui_retro/status/197514763931099138" data-datetime="2012-05-02T02:36:04+00:00">May 2, 2012</a></p></blockquote>
<blockquote class="twitter-tweet">
<p>ワイフはbotじゃありません</p>
<p>— ryopeko retro (@ryopeko_retro) <a href="https://twitter.com/ryopeko_retro/status/252677614421024769" data-datetime="2012-10-01T07:53:32+00:00">October 1, 2012</a></p></blockquote>
<blockquote class="twitter-tweet">
<p>えーわいふはbotだよっ♡</p>
<p>— わいふおくときゃっと (@ryopeko_wife) <a href="https://twitter.com/ryopeko_wife/status/246958814811807744" data-datetime="2012-09-15T13:09:04+00:00">September 15, 2012</a></p></blockquote>
<h3>ものづくりの題材としてのおもしろさ</h3>
<p>「1年前の自分のツイートを再現する」って、要件はこれだけなんだけれど、これを定常運用まで持っていこうとすると、考えることはけっこうあって、設計が楽しい。</p>
<ul>
<li>「1年前の自分のツイート」のデータをどのように参照するのか</li>
<li>アプリケーションの実行体制をどのようにするのか (常駐プロセス？定期実行？)
<ul>
<li>定期実行の場合、何分おきに実行するとか、どこまでツイートしたかの進捗管理とか</li>
</ul>
</li>
<li>「1年前」をどう定義するか (365日前？日付を揃えて年だけ-1する？)
<ul>
<li>これによって2月29日の扱いが変わってくる</li>
</ul>
</li>
<li>メンションやハッシュタグの扱いをどうするか</li>
<li>ツイートしない方がよさそうな内容をどう扱うか (不謹慎とかそういうの)</li>
</ul>
<p>プログラミングの練習をしたい人にとっては、なかなかよい題材になると思う。おすすめ。</p>
<p>うんこ大好きマジサー先輩から、以下のようなアッドバイスもあった。</p>
<blockquote class="twitter-tweet">
<p>@<a href="https://twitter.com/june29">june29</a> 去年さんと一昨年さん、曜日合わせてる？合わせると同期感あって面白いよ</p>
<p>— Ryoichi SEKIGUCHI (@ryopeko) <a href="https://twitter.com/ryopeko/status/281001662657732608" data-datetime="2012-12-18T11:43:11+00:00">December 18, 2012</a></p></blockquote>
<p>たしかに、今のぼくが平日を過ごしているときに、過去のぼくが休日ツイートを連発していると、時空の歪みを感じることがあるので、曜日で揃えるってのもおもしろそうです。ただ、ぼくは年末に設計したこともあって、年越しの瞬間を各年の自分がどう過ごしているか並べて観測してみたいと考えて、日付けで揃えることにしました。</p>
<h3>動かしてみて</h3>
<p>まわりからの反応もよくて楽しい。すっごい愛されている感じする。うれしくて泣いています。</p>
<blockquote class="twitter-tweet" data-in-reply-to="280904131781214208">
<p>@<a href="https://twitter.com/june29">june29</a> 去年のもあるのｗTLに面倒くさい子が3人（同一人物）とかマジキチ…</p>
<p>— すずきみほ SUZUKI Miho (@adzuki34) <a href="https://twitter.com/adzuki34/status/280904533348065280" data-datetime="2012-12-18T05:17:14+00:00">December 18, 2012</a></p></blockquote>
<p>1〜2年前と比べてみて、自分がおかれている状況というのもずいぶんと変わってきていて、それを日々の中で自覚できるのは楽しい。そこには、今ではなんとも思わないような問題と真剣に向き合っている過去の自分がいたり、また、2年前から考え続けていることにいまだに決着がついていないと気付かされたり。</p>
<p>あと、過去の自分がすごいおもしろいツイートをしていて、今の自分がそれを見て笑うの、エコっぽくていいと思う。これを5年分とかまわせたら、かつてのドラえもんの「2話目は再放送」みたいな感じで、永久機関っぽくできそう。というか、過去の自分のツイートを @june29 本体のアカウントから発信しても気付かれないかもしれない。ぼくが死んだあとも過去のボットが動き続けるとしたら「死ぬまであと◯◯日だ、まだ元気にしている」みたいなことがわかって趣があるかもしれない。</p>
<h3>まとめ</h3>
<p><a href="https://twitter.com/june29kyonen" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @june29kyonen</a><br />
<a href="https://twitter.com/june29ototoshi" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @june29ototoshi</a></p>
<p><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></p>
<p>表題の通りのボットである<a href="https://twitter.com/june29kyonen" title="キョネ (june29kyonen) on Twitter">キョネちゃん</a>と<a href="https://twitter.com/june29ototoshi" title="オトト (june29ototoshi) on Twitter">オトトちゃん</a>を作成した。つくって動かしてみると、思わぬフィードバックが自分に返ってきておもしろい。よい素振りになったし、やっぱり、自分が書いたコードで日々の自分の思考に影響を与えられるのはおもしろいので、こういった機会をもっと大事にしていきたい。</p>
<h3>2013-09-05 追記</h3>
<p>運用上の都合により、一時的にキョネちゃんオトトちゃんの動きを止めることにしました。</p>
<p><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
