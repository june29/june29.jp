+++
title = "マイネット・ジャパンさんとの交流勉強会"
date = "2008-12-21T15:10:19+09:00"
slug = "workshop-in-mynet"
draft = false

+++

<p>先日，ありがたいお誘いをいただきまして，<a href="http://mynet.co.jp/">マイネット・ジャパン</a>さんとの交流勉強会に参加してきました！</p>
<p><a href="http://www.flickr.com/photos/june29/3117834567/" title="マイネット・ジャパンさんとの交流勉強会 by june29, on Flickr"><img src="http://farm4.static.flickr.com/3270/3117834567_f3bfe335a8.jpg" width="500" height="334" alt="マイネット・ジャパンさんとの交流勉強会" /></a></p>
<p>うちは小さな会社で，メンバーも数えるほどしかいないので，このような機会をいただいて，共通の話題で盛り上がれる仲間に出会えるのはとても嬉しいことです．会社という枠をこえて一緒にガンバっていけるって素晴らしいことです！ちょー楽しかったです．今度はうちに遊びにきてくださいね！</p>
<p>うちの会社にも交流勉強会を積極的にホストする文化を根付かせたいよ．それがいいよ．</p>
<h3>マイネット・ジャパンさんから</h3>
<p><a href="http://newsing.jp/" title="ユーザー参加型ニュースサイト - newsing（ニューシング）">newsing</a> と <a href="http://katy.jp/" title="携帯サイト作成無料 -利用者数No.1 -katy（ケイティ）-">katy</a>，それぞれの開発担当者の方から，開発体制やシステムの中身のお話をきかせてもらった．どちらのチームも若いメンバーで構成されていて驚きました．</p>
<p>具体的な勉強会の内容については，どこまで書いていいか分からないから省略です．簡略化してリストで振り返ります．</p>
<ul>
<li>newsing は独自フレームワークで実装</li>
<li>シングルバイナリー化して表示切り替え</li>
<li>Xen で仮想化！仮想化！</li>
<li>1ディレクトリに5,000ファイル以上を置くと重くなる</li>
<li>RewriteMap は Apache の再起動なしでルールを反映</li>
</ul>
<p>あと，話の中でちょろっと教えてもらった <a href="http://firemobilesimulator.org/" title="Top - FireMobileSimulator.org">FireMobileSimulator</a> ってのを次の日に試してみたらすごすぎて漏らした．もっと早く君に会いたかったよ…！ケータイサイト開発するなら知っておいて損はありませんね．いい情報を教えてもらいました．</p>
<h3>うちから</h3>
<div style="width:425px;text-align:left" id="__ss_862539"><object style="margin:0px" width="425" height="355"><param name="movie" value="http://static.slideshare.net/swf/ssplayer2.swf?doc=for-public-1229835022124081-2&#038;stripped_title=ss-presentation-862539" /><param name="allowFullScreen" value="true"/><param name="allowScriptAccess" value="always"/><embed src="http://static.slideshare.net/swf/ssplayer2.swf?doc=for-public-1229835022124081-2&#038;stripped_title=ss-presentation-862539" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="355"></embed></object></p>
<div style="font-size:11px;font-family:tahoma,arial;height:26px;padding-top:2px;">View SlideShare <a style="text-decoration:underline;" href="http://www.slideshare.net/june29/ss-presentation-862539?type=powerpoint" title="View ついでに勉強会 on SlideShare">presentation</a> or <a style="text-decoration:underline;" href="http://www.slideshare.net/upload?type=powerpoint">Upload</a> your own.</div>
</div>
<p>弊社 <a href="http://www.scigineer.co.jp/" title="ディスカバリーエンジン・デクワスによるレコメンデーションのサイジニア-HOME">Scigineer</a> が外部に向けて何か話すときは，社名にも込められているように「Science」と「Engineering」って2つの切り口で話してきたんだけど，今回はマイネット・ジャパンの開発チームの皆さんとの交流勉強会ということで，いつもの話は触りだけにして(結局けっこう話したみたい)，ボクらのチームの取り組みについてお話させてもらいました．現在のメイン事業であるレコメンデーションエンジン <a href="http://www.deqwas.com/" title="デクワス - ディスカバリーエンジン/レコメンデーションエンジン">Deqwas</a> は，研究・開発に関わっているのが8人ぐらい．その中でボクは，お客さんごとの差違を吸収しながら要望を一般化し，運用を可能な限り自動化するための作業をしています．研究チームの一員でもあるため，論文を読んだりゼミっぽいディスカッションに参加することもありますが，ここ数ヶ月のメインの作業はシステムの設計とプログラミングです．ボクと同じような作業をしている人が他に2人いて，これをチームと呼んでいます．</p>
<p>チームの心構えや，実際の取り組みについて，お話させてもらいました．ドキドキしましたよ．</p>
<p>運用のためのプログラムはほとんどが Java で書かれています．チームリーダがライブラリを作り，ボクともう1人がそれを使って処理を書く体制です．ソースコードの管理には Subversion を，プロジェクトの管理には <a href="http://maven.apache.org/" title="Maven - Welcome to Maven">Maven</a> を使っています．Maven は Eclipse とも仲良しで(たまにケンカもするけど)，ライブラリの依存関係を上手いこと扱ってくれるので，今の体制に合っていてとても助かっています．各人がプロジェクト単位で担当を持ち，動くようになったら SNAPSHOT をパッケージしてラボ環境にデプロイします．ある程度，安定した動作が確認できたらプロジェクトをリリースします．SNAPSHOT 状態が長く続いているプロジェクトがあれば「早くリリースしようぜ！」とメールを流すようにしたところ，リリースサイクルが早まって，体制が改善されました．いい感じです．</p>
<p>継続的インテグレーションツールである <a href="https://hudson.dev.java.net/" title="hudson: an extensible continuous integration engine">Hudson</a> を積極的に活用しています．実は10月に参加させてもらった <a href="http://www.java-users.jp/contents/events/ccc2008fall/" title="JJUG Cross Community Conference 2008 Fall">JJUG Cross Community Conference 2008 Fall</a> で，Hudson を開発されている川口さんのお話を聞くことができて，大変に光栄な機会でした．開発のモチベーションに強く共感したり．</p>
<p><a href="http://www.flickr.com/photos/june29/2949892518/" title="Hudsonによる継続的インテグレーション by june29, on Flickr"><img src="http://farm4.static.flickr.com/3044/2949892518_581e3bfc4a.jpg" width="500" height="334" alt="Hudsonによる継続的インテグレーション" /></a></p>
<p class="photo-caption">「技術者は王様」コンピュータに任せられることは任せてしまおう</p>
<p><a href="http://www.flickr.com/photos/june29/2949039107/" title="Hudsonによる継続的インテグレーション by june29, on Flickr"><img src="http://farm4.static.flickr.com/3273/2949039107_321d3309d0.jpg" width="500" height="334" alt="Hudsonによる継続的インテグレーション" /></a></p>
<p><a href="http://www.flickr.com/photos/june29/2949893258/" title="Hudsonによる継続的インテグレーション by june29, on Flickr"><img src="http://farm4.static.flickr.com/3228/2949893258_035b0a1f81.jpg" width="500" height="334" alt="Hudsonによる継続的インテグレーション" /></a></p>
<p class="photo-caption">「10年は泥のように働け」「無理です」</p>
<p>随時，コミットされたソースコードのテストを走らせます．開発機で通ったテストがインテグレーションサーバで通らなかったりすると，開発環境に依存したコードになっている箇所に気付けたりします．ここを通しておくだけでも，本番環境にデプロイする前に安心感を得られます．</p>
<p>また，うちのシステムはバッチ処理が非常に多く，Hudson を HTML の UI 付き cron としても利用しています．Hudson では登録したプロジェクトの依存関係を設定できて，「これが成功したら，次はこれを実行，その次はこれ」と登録できるので運用業務に向いています．さらに，複数のマシンで起動させた Hudson 間で連携もできるので，重たいバッチ処理を分散させつつ，上流工程から下流工程までの実行を一括して管理することができます．コンソール出力は HTML を動的に書き換えて表示されるので，ブラウザからの操作ですべてを管理できるのも嬉しいです．あと，地味な機能ですが，ひとつ前のスケジュールで実行された処理が終わらないときは，次の処理がきちんと待ち状態になるので，タスクスケジュールに追われて CPU を食いつぶしてしまうこともありません．とても重宝しています．</p>
<p>うちの Deqwas を導入していただいたお客さんのサイトの監視も，Hudson に登録したプロジェクトから行っています．</p>
<p>続いて，言わずと知れた <a href="http://trac.edgewall.org/" title="The Trac Project">Trac</a> です．うちのチームでも使っています．用途は，Wiki と，リポジトリブラウザと，チケット，プラグインで実現するブログぐらいです．Trac を使っていて「なんでここにリンクがないんだ」等の不満を抱いたときにはッ！すでにユーザスクリプトを書き終えているんだッ！！チームリーダに <a href="https://addons.mozilla.org/ja/firefox/addon/748" title="Greasemonkey :: Firefox Add-ons">Greasemonkey</a> の素晴らしさを伝えられて嬉しいです．チケットでは，各お客さんの進捗だけを管理していて，チームメンバーのタスク管理はもっばらポストイットに任せています．ポストイットは，必ず強粘着タイプを使います．PC のディスプレイの縁などに貼っておいてもはがれない強粘着タイプが良いです．完了したタスク分のポストイットをしばらく貼っておくのは重要ですね．完了タスクを見える化，ひたむきな自分を演出してチームメンバーの気を引いちゃえ！</p>
<p>Trac の Wiki は記法が特殊でなかなか覚えられません．工夫は <a href="https://addons.mozilla.org/ja/firefox/addon/142" title="Make Link :: Firefox Add-ons">Make Link</a> に以下の設定を足したぐらいですかねー．Wiki との付き合い方については後述します．</p>
<pre>
# Trac Wiki 用ハイパーリンク記法
[%url% %text%]
</pre>
<p>テキストチャットと，簡単なファイルの送受信には <a href="http://www.skype.com/" title="Make the most of Skype - free internet calls and cheap calls">Skype</a> を利用しています．これはチームのスタンスというか，ボク個人の趣味によるところが大きいですが，社内のメールの流量をなるべく下げたいとの思いがあります．お客さんとのやりとりはほとんどがメール依存になるので，依存しなくても済む部分は依存しないようにして，重要度の高い情報が低い情報に埋もれてしまう事態を避けたいと考えています．開発・運用チームでは，簡単なコミュニケーションならメールよりも Skype を使うようにしています．チーム用に常にグループチャットが開かれているので，そこに何かを投じれば他のメンバーにすぐに伝わります．</p>
<p>もう一歩進んだ工夫として，Skype と他のシステムを連携させています．<a href="https://developer.skype.com/Docs/ApiDoc/FrontPage" title="Docs/ApiDoc/FrontPage - Skype Developer Zone">Skype の API</a> を叩く簡単なボットを動かし，Trac や Hudson のフィードを常にチームのグループチャットに流しています．誰かがソースコードをコミットしたときのコミットログや，Hudson 上で動かしているテストが失敗したときなど，ボットの発言に乗っかってその場で議論を展開できます．情報のインプットとアウトプットを同じ場所でできるのが，仕組みが上手く働いている要因だと思っています．</p>
<p>もうひとつの工夫は，Skybridge という別のボットによって，Skype から Trac の Wiki に書き込めるようにしていることです．当初，Wiki に情報をまとめる習慣がなかなか根付かなくて，あとから参照できる情報がないのが問題になりました．Skype がお手軽すぎるため，そこばかりに情報が集中して，情報の参照性が下がってしまいました．そこで「じゃあ Skype に書いたら Wiki にも書かれたらよくね？」となり，Skybridge が生まれました．決められたルールに沿ったメッセージを Skype に書き込むと，同時に Wiki にもログが残ります．これがチームにピタァッときて，副作用的に，Wiki に情報を書き込む頻度も上がりました．「他のメンバーに伝える」と「あとから参照できるように記録を残す」を同時に実現できるのが素晴らしいと思っています．</p>
<p>このように，ボクらのチームでは，定着しない習慣はメンバーに対して無理に強いることはせず，仕組みの方を積極的に変えていくスタンスでいます．「人はミスするもの」「人は面倒なことはしたくないもの」と，人の気持ちを念頭に置いてチームの在り方を決めていくスタンスは，誇らしく感じています．4月から一緒に仕事をしているボクらが見つけた，「文化」と呼べるものかもしれません．こういったひとつひとつを，暗黙のままにせず，メンバーみんなで言葉にして，チームを強くしていく．「Practice とは，こうすれば上手くいくという攻略法ではなく，それぞれが実践から見つけるものなんだ」と教えてくれたのは，大切な先輩でした．今回の資料を作りながら，先輩の言葉を思い出し，噛みしめることになりました．</p>
<p>発表の最後には，Firefox やその他の開発用に使っているツールについての，簡単なデモンストレーションを行いました．うちのシステムは，お客さんの Web サイトに指定の HTML タグや JavaScript のコードを埋め込んでもらうところから連携が始まるので，動作確認が困難です．なので，Firefox，Firebug，Greasemonkey，ファイル置き換え系プロキシなどを駆使して，お客さんのサイトをガリガリ書き換えたりして，スクリプトの動作や表示の確認をしています．この辺もノウハウが貯まってきているところではあるので，テーマにして発表するのも面白いかもしれません．学生時代に仲間とワイワイやってきたことが業務に活きるってのは本当に嬉しいことですよ．</p>
<p><a href="http://www.flickr.com/photos/june29/3118662630/" title="マイネット・ジャパンさんとの交流勉強会 by june29, on Flickr"><img src="http://farm4.static.flickr.com/3293/3118662630_b32386578a.jpg" width="500" height="334" alt="マイネット・ジャパンさんとの交流勉強会" /></a></p>
<h3>懇親会</h3>
<p>そうそう，今回のお誘いは「懇親会のついでに勉強会でもやりませんか」というもので，こちらがメインでした．勉強会について長々と書いてしまってゴメンなさい…！</p>
<p><a href="http://www.flickr.com/photos/june29/3118665070/" title="マイネット・ジャパンさんとの交流会 by june29, on Flickr"><img src="http://farm4.static.flickr.com/3252/3118665070_3b9b9ea1ce.jpg" width="500" height="334" alt="マイネット・ジャパンさんとの交流会" /></a></p>
<p>いやー もうなんていうかね，楽しかったです！拒否されてもまた行きます．皆さんイキイキとしていて素晴らしかった．外部の人と交流する文化が根付いていて羨ましい．学ばせていただきます．うちも人数は少ないけど負けていられないなーって思いました．「QBK(急にべにぢょがきたので)」は反則だなーと思いました．この日に教えてもらった弊社の近くの丼のお店，次の日に行きましたよ．美味しかったです．</p>
<p>最後にもう一度，素晴らしい機会をどうもありがとうございました！ちゃす！</p>
