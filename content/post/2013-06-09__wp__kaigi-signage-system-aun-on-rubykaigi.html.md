+++
title = "RubyKaigiを支えるサイネージと、ぼくらのものづくり"
date = "2013-06-09T22:23:37+09:00"
slug = "kaigi-signage-system-aun-on-rubykaigi"
draft = false

+++

<p><a href="http://www.flickr.com/photos/sora_h/8915746303/" title="P5314404.edited by sora_h, on Flickr"><img src="http://farm8.staticflickr.com/7361/8915746303_f5acb11992_z.jpg" alt="P5314404.edited"></a></p>
<p>このエントリは、いちおうパブリックな場所に置いてはみるものの、いつもの愉快な仲間たちである @darashi @kei_s @hmsk の方を向いて書く。あとは、なんかのときに読み返すだろう未来の @june29 のためのものでもある。</p>
<h3>実行委員のひとりとして RubyKaigi 2013 に参加してきた</h3>
<blockquote class="twitter-tweet">
<p>事務局のおっさん先輩から歴史のお話を聞かせてもらってすごくいい感じだ！</p>
<p>—大和田純 公式アカウント (@june29) <a href="https://twitter.com/june29/status/276333186617839617">December 5, 2012</a></p></blockquote>
<p>かくたに先輩とサシで乾杯したのが、2012年12月のこと。おおっと、そんなに前だったか、びっくり。</p>
<p>ぼくはたぶん、RubyKaigi 2011 をこじらせすぎていて、あのときの体験があるもんだから、RubyKaigi 2013 で Reboot とか言われて頭では理解できていても心がピンときていない感じで、かくたに先輩のお話を聞きながら少しずつ心をほぐしていった。</p>
<p>「よっしゃ、やるぜー！！！」ってなると RubyKaigi 2011 みたいになっちゃうだろうから、意識的に一歩引いて、Subscreen の部分だけを独立して引き受ける「Subscreen 業者の人」くらいの関わり方をしようと思った。</p>
<p>結果的には、直前に就任してレポート斑の顧問なんかも担当させてもらったのだけれど、ほどよい距離感で関われたと思う。</p>
<h3>aun &#8211; Kaigi Signage System</h3>
<p>実行委員の中では @darashi と一緒に作業することが多くて、主に2人で「会場に設置するサイネージ一式」のハンドリングを担当した。会場の下見にも行って、どこになにをどれくらい設置するか、から考えて実装して運用した。</p>
<p>ぼくらが任されていた画面は、実に12枚。</p>
<ul>
<li>ホールAの右サブスクリーン</li>
<li>ホールAの左サブスクリーン</li>
<li>ホールBの右サブスクリーン</li>
<li>ホールBの左サブスクリーン</li>
<li>ホールAの前のスクリーン</li>
<li>ホワイエのスクリーン1</li>
<li>ホワイエのスクリーン2</li>
<li>ホワイエのスクリーン3</li>
<li>会議室1のメインスクリーン</li>
<li>会議室1のサブスクリーン</li>
<li>会議室2のメインスクリーン</li>
<li>会議室2のサブスクリーン</li>
</ul>
<p>これだけ数が多くて、会場内の色んなところに配置されていると、それぞれに接続したパソコンのところに歩いて行ってマウスでカチカチして表示内容を切り替えるってことがむつかしくなる。</p>
<p>そこでぼくらは、「どのスクリーンにどんな内容を映すか」を統合的に管理できるアプリケーション「aun」をつくって、当日に臨んだ。以下は、aun の操作画面の一部だ。左の「Screens」のペインが、まさに「どこになにを映すか」を操作する。右の「Announcements」は、会期中の「参加者向けのお知らせ」を管理するもの。</p>
<p><img src="http://c714091.r91.cf2.rackcdn.com/9850fdfb4be0b07628b52217275b0df9ce4f856ecc.png" alt="aun"></p>
<p>これがあったので、かなり柔軟に会場内のサイネージの配置を設計できた。「次はホールBの発表がない時間だから、ホールBのスクリーンにはホールAの配信内容と Twitter/IRC のストリームを表示させるぜ」なんてことが、数クリックでできてしまう。便利〜！</p>
<p>会期中に Bento Sponsor の Heroku さんから「お弁当を配るとき、これを映してほしいんだけど」と相談があったときも、すぐに「できますよ」とお返事できて、気分がよかった。そんなこともあろうかと！準備はバッチリだった。</p>
<p><img src="http://distilleryimage2.s3.amazonaws.com/b08de956c99c11e2939b22000a1f9251_7.jpg" alt="" /></p>
<h3>The road to aun</h3>
<p>その aun ってやつをどんなふうにつくっていったのか、思い出しながら記録に残しておきたい。</p>
<p>起源という意味では、ぼくがはじめて実行委員として関わった「RubyKaigi 2010」のときにぼくがつくったものが、それに当たるのかもしれない。</p>
<p><a href="http://www.flickr.com/photos/sora_h/4937997982/" title="RubyKaigiぽぽぉー by sora_h, on Flickr"><img src="http://farm5.staticflickr.com/4137/4937997982_117661f640_z.jpg" alt="RubyKaigiぽぽぉー"></a></p>
<p>ろくにスタイルがあたっていなくて見た目がションボリなんだけれど、なんかのモチベーションでつくったのだったと思う。</p>
<p>ほいで、このときだったっけな… 同じく実行委員だった @norio 先輩が「コミットしておいたから〜」とかなんとか言ってくれて、ぼくは「えっえっ」って思いながらも再起動してみたら… おおっ！なんか見た目がめっちょかっこよくなった！みたいなことが起きた。自分の中の「@norio さんかっけー」像は、このときから揺るがないものになっている。</p>
<p>実は、RubyKaigi 2013 の会期中にも @norio 先輩が「あれさー」と話しかけてきてくれて、その場でペアプロがはじまった！少年漫画脳のぼくには、こういう展開は刺激が強すぎる。「待たせたな…」「お、お前は…！」みたいな展開。脳汁がやばかった。</p>
<p><a href="http://www.flickr.com/photos/sora_h/8915726321/" title="P5314485.edited by sora_h, on Flickr"><img src="http://farm6.staticflickr.com/5465/8915726321_b2c0af95a9_z.jpg" alt="P5314485.edited"></a></p>
<blockquote class="twitter-tweet">
<p>最初にぼくが <a href="https://twitter.com/search/%23rubykaigi">#rubykaigi</a> 用にサブスクリーンのアプリをつくったときはビューがどうしようもなくて、それを「コミットしといたから〜」ときれいにしてくれたのは数年前の @<a href="https://twitter.com/norio">norio</a> さんでした。そして今日、@<a href="https://twitter.com/norio">norio</a> さんとペアプロしてビューを整えたのです。感慨深い！</p>
<p>&mdash;大和田純 公式アカウント (@june29) <a href="https://twitter.com/june29/status/340468989689995264">May 31, 2013</a></p></blockquote>
<p>いま見るとお粗末なこの「サブスクリーン用のソーシャルストリーム投影アプリ」は、なんやかんやで好評だったんだろうな、だからきっと Keep されることになったのだろう。そうして迎えた翌年の「RubyKaigi 2011」では、かっこいい「<a href="https://github.com/ruby-no-kai/kaigi_subscreen" title="ruby-no-kai/kaigi_subscreen · GitHub">Kaigi Subscreen</a>」という名前も授かり、サブスクリーン用のシステムとしてはひとつの完成形に到達した。</p>
<p><a href="http://www.flickr.com/photos/machu/5950666816/" title="RubyKaigi 2011 by machu., on Flickr"><img src="http://farm7.staticflickr.com/6017/5950666816_8858bf08fc_z.jpg" alt="RubyKaigi 2011"></a></p>
<p>発表資料の横に堂々と映し出されるサブスクリーン、RubyKaigi の風景の一部として、とてもかっこいい！とぼくは思っている。えっへん。</p>
<p><a href="http://rubykaigi.org/2012" title="RubyKaigi 2012: 404 Kaigi Not Found"></a><a href="http://rubykaigi.org/2012">http://rubykaigi.org/2012</a> にアクセスすると404なわけだけれども、2012年には <a href="http://sapporo.rubykaigi.org/2012/ja/" title="Sapporo RubyKaigi 2012 (札幌Ruby会議2012)">Sapporo RubyKaigi 2012</a> があった。このときは、どこにでもいるふつうの参加者として参加するつもりだったものの、気付いたら直前くらいからサブスクリーンの運用あたりを中心にお手伝いさせてもらっていて(たぶん、お手伝いしたくなっちゃった)、RubyKaigi 2011 のときのものを @darashi と一緒にちょろっとアップデートして設置した。</p>
<p><a href="http://www.flickr.com/photos/hmsk/8073543699/" title="_DSC3670 by hamachang, on Flickr"><img src="http://farm9.staticflickr.com/8033/8073543699_1df1d12f49_z.jpg" alt="_DSC3670"></a></p>
<p>そして迎えた2013年、RubyKaigi 2013。これまでのサブスクリーン運用で得られた知見をすべて手札に持った状態で、「さて、どうする」の会話をスタートした。</p>
<p>2013年4月12日(金)の夜、ぼくらは中野にいた。2泊3日で中野サンプラザの和室を予約し、開発合宿にブッ込んだのだ。北海道からやってきた @darashi と、神奈川からやってきた @kei_s と、都内在住のぼく。この3人の開発合宿で、aun の原型はカタチになった。</p>
<blockquote class="twitter-tweet">
<p>チェックインしました <a href="http://t.co/JkRHx8rrBv" title="http://instagram.com/p/YAAu-FKpKb/">instagram.com/p/YAAu-FKpKb/</a></p>
<p>—大和田純 公式アカウント (@june29) <a href="https://twitter.com/june29/status/322647010756935680">April 12, 2013</a></p></blockquote>
<h3>悪ふざけ</h3>
<p>突然の宣伝…！になっちゃうけれど、ぼくらのものづくりについては<a href="http://june29.jp/2013/03/03/web-db-press-vol-73/" title="「WEB+DB PRESS Vol.73」に記事を載せてもらいました - 準二級.jp">「WEB+DB PRESS Vol.73」に載せてもらった記事</a>にドーンと書いてある。</p>
<p>今回も、参加者向けのお知らせを入力して表示する機能「お知らせマネージメントシステム (Oshirase Management System」は @darashi 命名によって「オシムス」と呼ばれていたり、任意の PDF ファイルをスライドショー表示する機能は「アクロバティックリーダー」と呼んでいたりした。</p>
<p>「サイネージに映すもの」のひとつとしてつくった <a href="https://github.com/darashi/rubyistokei" title="darashi/rubyistokei · GitHub">Rubyistokei</a> は、いい感じにプロジェクトとして独立し、いい感じのスピンオフ作品になった。一部では「おっさん時計」と呼ばれるくすぐったいようなアプリ。これも、自分たちらしい「悪ふざけ」から生まれた作品だと思う。</p>
<blockquote class="twitter-tweet">
<p>ここにおっさん写真があるじゃろ ( ＾ω＾)⊃ おっさん ⊂これを時計と合わせて…( ＾ω＾)≡⊃⊂≡ できあがりじゃ( ＾ω＾) ⊃ <a href="https://twitter.com/search/%23rubyistokei">#rubyistokei</a> ⊂</p>
<p>— nari3 (@nari3) <a href="https://twitter.com/nari3/status/339035032175910912">May 27, 2013</a></p></blockquote>
<p>あと、仲間たちはみんな「かっこつけたい」人たちなので、手土産なしの合流を避けようとする。途中、しばらく今回のプロジェクトから離れていた @kei_s が「<a href="https://github.com/kei-s/rubyistokei-wallpaper-osx" title="kei-s/rubyistokei-wallpaper-osx · GitHub">Rubyistokei Wallpaper for OS X</a>」をいきなり出してきて「はー、やっと混ざれた」と言ったのが印象的だった。@hmsk にしても、お話を聞いてみるとやっぱり「どうにかして認めてもらって混ざりたかった」というようなことを言っていた。彼は「Android アプリとしてラップする」ってところをまるっとやってくれて、おかげで会場設営がずいぶんと楽になったのだ。すごい。</p>
<h3>さらにさかのぼって</h3>
<p>ここから先は、もうひたすら自分のための思い出話ゾーン。</p>
<p>ハッシュタグ #rubyfriends のツイートを集めて写真をタイル表示する「photo-tiles」というモジュールをつくっていたとき、動作確認用には「桜」の写真を使っていた。季節が季節だったから、桜の写真付きのツイートの流量が動作確認にちょうどよかったのだ。</p>
<p><img src="http://c714091.r91.cf2.rackcdn.com/9850fdfb4b570085fd9f5e99afe26e26a6dfcb687e.png" alt=""></p>
<p>これには、2010年につくった「<a href="http://june29.jp/2010/03/27/sakurapics/" title="SakuraPicsでタイムラインを舞い散る「さくら」を集める - 準二級.jp">SakuraPics</a>」と、2011年につくった「<a href="http://june29.jp/2011/03/31/sakurastagram/" title="君が見た桜を僕も見る「sakura.stagram」をつくりました - 準二級.jp">sakura.stagram</a>」のことを思い出さずにはいられなかった。ぼくらのものづくりは地続きだ。</p>
<p><img src="https://skitch-img.s3.amazonaws.com/20110331-dbnrj2hd735scciqtc77mdr2ur.png" alt=""></p>
<p>それから、2008年頃には、美人時計の全写真をダウンロードして(当時は写真のファイル名が簡単に推測できるものだった)、勝手に時計アプリをつくって仲間内で遊んでいたりもしたのだ。そんな自分たちが数年後におっさん時計をつくることになろうとは思ってもみなかった。</p>
<p>aun のサーバサイドとクライアントサイドの一斉同期の仕組みは、@kei_s がクックパッドさんの「第2回 開発コンテスト24」でつくっていた「<a href="http://june29.jp/2011/04/25/onehalf-for-cookpad-24contest2/" title="半径3メートル以内の世界でもっともっとひっついてたくて「1/2」をつくりました - 準二級.jp">半径3メートル以内の世界でもっともっとひっついていたい1/2</a>」の仕組みそのものだ。</p>
<p>その「第2回 開発コンテスト」と、翌年の「第3回 開発コンテスト」にぼくらが出場したとき、コンテストの運営を担当してくれていたのが @hmsk だ。そんな彼は「楽しそうですね」と言ってくれていて、ぼくらの<a href="http://june29.jp/2013/03/03/web-db-press-vol-73/" title="「WEB+DB PRESS Vol.73」に記事を載せてもらいました - 準二級.jp">「WEB+DB PRESS Vol.73」に載せてもらった記事</a>のレビュアーも頼まれてくれて。ついに今回、同じ側に立って仲間として一緒にものづくりできたってのも、実に感慨深い出来事だった。</p>
<h3>まとめ</h3>
<p>すっかり思い出話が多くなってしまったけれど、これだけは本当に書き残しておきたくて、書いた。ひとつひとつは大きな意味を持たないかもしれない、ぼくらのものづくりや、それぞれの作品だったりするけれど。こうして数年間をふりかえってみると、ちょっとずつのことが、今の自分が歩いている道になっているのだなぁと気付かされて。</p>
<p>自分が「たのしい！」と思えることを続けていくのは本当に大事で、その匂いにつれられて手土産を持ってやってくる人とは、すごくいい関係になれるんじゃないかって。</p>
<p>そういうぼくの個人的なお話は抜きにしても、aun はすごくいい作品になったので、他のイベントでもつかってもらえるようなパッケージに仕上げられたらいいなぁって考えているところ。今後の展開については、またあらためて。</p>
<p>まだ読んでいなかったら、@hmsk のエントリもぜひ続けて読んでみてほしい。</p>
<ul>
<li><a href="http://hmsk.hatenablog.com/entry/2013/06/02/202411" title="プロジェクタ用のパソコンを準備したくない - はまさき">プロジェクタ用のパソコンを準備したくない &#8211; はまさき</a></li>
</ul>
<p><script async="" src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
