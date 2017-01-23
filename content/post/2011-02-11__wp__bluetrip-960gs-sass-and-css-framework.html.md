+++
title = "BlueTripと960.gsとSassと、CSSフレームワークについて、少しずつ"
date = "2011-02-11T13:02:36+09:00"
slug = "bluetrip-960gs-sass-and-css-framework"
draft = false

+++

<p>先日、このブログをリニューアルしました。作業としては、WordPress のテーマ作成で、もっと具体的に言うと、HTML と CSS のコーディングになります。そういや、自分はどうやって HTML と CSS のことを学んだかなぁと思い返してみると、ほぼ完全な独学です。</p>
<p>専門学校時代に演習で HTML を書いたこともありましたが、そのときは「HTML とは何か」「HTML はどうあるべきか」なんてことは考えもしませんでしたし、「こう書けば、こう表示される」を習って試してみて課題をこなして、それで終わりでした。</p>
<p>その後、色々を経て「Web アプリケーションを作りたい！」と思うようになり、まずはブログのテーマを自作しよう、というところから始まり、なんやかんやと触っているうちに、最低限のマークアップはできるようになりました。</p>
<p>そんな自分ですから、プログラミング言語に比べると、マークアップについては自分流とも呼べないような「ただ書きました」レベルのものになってしまいます。きっと、このブログのマークアップを他の人にメンテナンスしてもらおうと思ったら、とっても大変だと思うのです。</p>
<p>さてさて、場面を「Web アプリケーションのチーム開発」の現場に移してみると。自分が思うままに書いたマークアップをチームのコードベースにコミットするのは、なかなか気が引ける作業でした。そこで、CSS フレームワークの導入を検討します。</p>
<h3>BlueTrip について</h3>
<p><a href="http://yusukebe.com/archives/002692.html" title="Blog Hacks 2011 〜 今、Blogを楽しむ5つのHacks - ゆーすけべー日記">ゆーすけべーさんの日記</a>で <a href="http://bluetrip.org/" title="BlueTrip CSS Framework | A beautiful and full-featured CSS framework">BlueTrip</a> を知って、興味を持って触ってみました。ゆーすけべーさんのリビドー駆動開発の速度を支えているのだとしたら、試しておいて損はなさそう、と思ってのことです。</p>
<p><a href="http://bluetrip.org/" title="BlueTrip CSS Framework | A beautiful and full-featured CSS framework"><br />
  <img src="http://img.skitch.com/20110211-bmywhd7ixihefihugxhfdqa2yg.png" alt="BlueTrip" /><br />
</a></p>
<p>ざっと CSS ファイルを読んでみて。なるほどなぁと思うことがいくつかありました。</p>
<p>最初の感想は「よくできているなあ！」です。HTML の要素がざーっと列挙されていたり、Internet Explorer 用の記述がまとまっていたり。これを読めただけでも、BlueTrip に触れてみてよかったな。記述は空っぽの style.css も「こういうふうに整理して書く方法もあるのか」というような内容でした。</p>
<p>その次に感じた印象は「CSS の非力な部分は、ぜんぶ俺が面倒を見てやるよ」的な雰囲気でした。「細かいところまでがんばっているのはすごいのだけれど… そこは、がんばるところ、なのかなあ」感です。BlueTrip さん、色々とがんばりすぎていて、見ていてつらくなるときが、たまに、あります。たまに、ね。</p>
<p>今の自分の理解では、CSS は「レイアウト」と「装飾」の両方の面倒をいっぺんに見なきゃいけなくて、それが、コード中で入り交じってしまうと、可読性が低くなり、メンテナンスもしにくくなる、のだと思っています。そして「レイアウト」も「装飾」も、素の CSS では担当できなくもないけれど、とにかく非力なんですよね。扱う人が一生懸命にがんばらなきゃいけない。</p>
<p>だから、「レイアウト」をばっちり担当する人と「装飾」をばっちり担当する人を、きれいに分けられたら、全体が整うんじゃないか… と考えてみると、グリッドレイアウトをフレンドリーにする <a href="http://960.gs/" title="960 Grid System">960 Grid System</a> と、「Powerful CSS」であるところの <a href="http://sass-lang.com/" title="Sass - Syntactically Awesome Stylesheets">Sass</a> の組み合わせは、納まりがよさそう。</p>
<p><a href="http://960.gs/" title="960 Grid System"><br />
  <img src="http://img.skitch.com/20110211-fbumy1482rb5pdai52y53jqdmm.png" alt="960 Grid System" /><br />
</a></p>
<p><a href="http://sass-lang.com/" title="Sass - Syntactically Awesome Stylesheets"><br />
  <img src="http://img.skitch.com/20110211-f22inpts2e6f5p49r7k9q9cfq.png" alt="Sass" /><br />
</a></p>
<p>…とかってことを書けたので、他の人はどんなことを言っているのかなって調べてみたら、だいたいすでに既出でした。</p>
<blockquote><p>
CSS フレームワークのアレの話、960gs(とかsass対応してるグリッドフレームワーク) + sass 使って sass で extend すれば css 命名も綺麗になるしいいんじゃないんですか、とか hotchpotch は hotchpotch は思ったりして</p>
<p><a class="quote" href="http://twitter.com/#!/hotchpotch/status/35614612707610624" title="Twitter / @Yuichi Tateno: CSS フレームワークのアレの話、960gs(とかs ...">Twitter / @Yuichi Tateno</a>
</p></blockquote>
<blockquote><p>
というのをだいたい通り過ぎた人たち(多分)が考えたのがSass。Sassならグリッドシステムで言うところのカラムの幅などを変数として定義しておき、デザインの変更が必要になったら新たに変数を定義し、変数の参照を変更するだけで良い。「サイドバーを右置きに変更！」という時でもカラム幅の指定の変数とfloatする方向の変数を分け、方向の変数のみを変更すれば簡単に実現できる。</p>
<p><a class="quote" href="http://subtech.g.hatena.ne.jp/h2u/20110210/1297311608" title="グリッドシステムのCSSフレームワーク - おれ ここ めも かきなぐる おまえ ここ よむ なぐる - subtech">グリッドシステムのCSSフレームワーク &#8211; おれ ここ めも かきなぐる おまえ ここ よむ なぐる &#8211; subtech</a>
</p></blockquote>
<h3>欲しいのは、ロケットスターターキット</h3>
<p>とはいえ、960.gs と Sass で「ちゃんと作ろう」と思ったら、ゼロベースで書かなきゃならんのですよね。いま自分が欲しいのは、とりあえずロケットスタートできて、ちょっと使い方を覚えるだけで基本部分は誰でも使えるような、スターターキット。</p>
<blockquote><p>
CSS Framework を駆逐したいなら Sass Haml のテンプレートセットでも書けばいいのかな。</p>
<p><a class="quote" href="http://twitter.com/#!/neotag/status/35588888571412480" title="Twitter / @neotag: CSS Framework を駆逐したいなら Sas ...">Twitter / @neotag</a>
</p></blockquote>
<p><a href="http://subtech.g.hatena.ne.jp/h2u/20110210/1297330803" title="SassというかSCSS - おれ ここ めも かきなぐる おまえ ここ よむ なぐる - subtech">SassというかSCSS &#8211; おれ ここ めも かきなぐる おまえ ここ よむ なぐる &#8211; subtech</a> に書かれているようなものが一式揃うと、あえて CSS フレームワークを使わなくてもよさそう。</p>
<p>というわけで、今後の発展に期待しつつ、現時点での現実解として、BlueTrip を使っておくのはアリだな、と思いました。</p>
