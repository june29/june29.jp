+++
title = "ブログとコンテンツの管理"
date = "2008-08-18T00:57:24+09:00"
slug = "blog-and-contents-management"
draft = false

+++

<p>2008年の今，ブログに動画を載せようと思ったら，多くの人が YouTube などのサービスにアップしたものを embed するんじゃないだろうか．それが簡単だからだ．</p>
<p><object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/tWpXFZsoivk&#038;hl=en&#038;fs=1"></param><param name="allowFullScreen" value="true"></param><embed src="http://www.youtube.com/v/tWpXFZsoivk&#038;hl=en&#038;fs=1" type="application/x-shockwave-flash" allowfullscreen="true" width="425" height="344"></embed></object></p>
<p>多くのブログサービスは画像のアップロードに対応していて，管理画面が付いていたりするけれど，それはおまけの機能であって，写真の管理に特化したサービスに敵うものではないだろう．例えばボクは Flickr にアップした写真をブログに embed するようにしている．</p>
<p><a href="http://www.flickr.com/photos/june29/2766120480/" title="雲と月 by june29, on Flickr"><img src="http://farm4.static.flickr.com/3105/2766120480_4cd947c9f7.jpg" width="500" height="334" alt="雲と月" /></a></p>
<p>同様に，スクリーンショットは Skitch から embed する．</p>
<p><img src="http://img.skitch.com/20080817-tbqsk2ibm9smkhwabdbdra817s.png" alt="Gmail - Spam (1)"/></p>
<p>商品を紹介したけりゃ，Amazon を使うことをすぐに思い付く．例えばこれは Socialtunes が生成してくれる embed 用のコードを使った例だ．</p>
<div class="amazon-item-box" style="display: block; padding: 0; border: 1px solid  #999; margin: 8px;  -moz-border-radius: 10px;">
<div class="amazon-item-image" style="display: block; padding: 10px; float: left;"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B000STC7PY/cameralady-22/ref=nosim" target="_blank"><img src="http://ecx.images-amazon.com/images/I/61akUp4Qq3L._SL160_.jpg" alt="あいどんわなだい" title="あいどんわなだい" style="border: none; display: inline; vertical-align: bottom;" /></a></div>
<dl class="amazon-item-info" style="display: block; margin-left: 10px; padding: 0 8px 0 10px; font-size: 10pt; line-height: 110%;">
<dt class="amazon-item-name" style="display: block; margin-bottom: 5px; line-height: 120%;"><a href="http://www.amazon.co.jp/exec/obidos/ASIN/B000STC7PY/cameralady-22/ref=nosim" target="_blank" title="あいどんわなだい">あいどんわなだい</a></dt>
<dd>
<ul class="amazon-item-info-list" style="list-style-type: none; padding-left: 0px; line-height: 120%;">
<li>アーチスト: 銀杏BOYZ</li>
<li>発売元: インディペンデントレーベル</li>
<li>レーベル: インディペンデントレーベル</li>
<li>スタジオ: インディペンデントレーベル</li>
<li>メーカー: インディペンデントレーベル</li>
<li>価格: ￥ 1,038 (1% OFF)</li>
<li>発売日: 2007/08/22</li>
<li>売上ランキング： 13835</li>
<li>おすすめ度 <img src="http://images-jp.amazon.com/images/G/09/x-locale/common/customer-reviews/stars-4-0.gif" alt="4.0"/></li>
</ul>
</dd>
</dl>
<p class="amazon-item-footer" style="clear: left; text-align: right; font-size: x-small; padding: 4px 10px 4px 10px; line-height: 100%; background-color: #f0f0f0;">posted with <a href="http://socialtunes.net">Socialtunes</a> at 2008/08/18</p>
</div>
<p>ソースコードを貼りたいなら，gist なんかステキだね．色づけもしてくれる．</p>
<p><script src="http://gist.github.com/5805.js"></script></p>
<p>TeX の書式で書いた数式を embed させてくれるサービスなんてのもある．</p>
<p><a href="http://formula.s21g.com/?Q%20%3D%20%5Csum_i%20(e_%7Bii%7D%20-%20a_i%5E2)"><img src="http://formula.s21g.com/?Q%20%3D%20%5Csum_i%20(e_%7Bii%7D%20-%20a_i%5E2).png" /></a></p>
<p>DISQUS を使えば，コメント欄だってブログ本体から切り離せちゃう．ブログシステム本体に依存しないって意味では，ソーシャルブックマークやはてなスターもそうだね．</p>
<h3>ブログってなんだ</h3>
<p>こうして embed できるものが増えていく．それぞれのコンテンツは，あるべき場所に向かう．写真は写真，動画は動画，商品は商品と集まっていた方が，探すときに便利だし，それぞれのコンテンツに合わせた整理の方法ってのがあるはずだから，そうあるべきなんだな．ブログシステムを移行するときに，画像も一度全部ダウンロードして新しい方にアップロードし直さなきゃいけないなんて，面倒すぎるよ．</p>
<p>切り離せるものは切り離すべき．必要なときだけ集めて，まとめて見せてあげられればいい．そうして最小単位までコンテンツを切り離せたら，セマンティック Web とか，そういう話になるのかなー．<a href="http://ido.nu/kuma/2008/04/11/seven-tumblr-content-types/">tumblrの7つのコンテンツ</a> の話も面白いなー．</p>
<p>じゃあ，ブログに残るのは，本文というか，文章というか，文脈だけなんじゃないかな．断片になったコンテンツをつなぎ合わせてそこに意味を付け加えてやると，それっぽい，エントリっぽいものになる．</p>
<p>2年ちょっと前，ボクは「ブログでこういうことやりたい！」ってのがいっぱいあって，色々と悩んだ末に WordPress を選んでブログを始めてみたけれど，今は特に WordPress にこだわりはなくなった．ゴテゴテと色んなものがくっついたものよりも，シンプルに伝えたい文脈だけを，適切なコンテンツと共に伝えられるのがいいなぁ．なんとなくそんな風に想う．</p>
<p>リニューアルしたいなー．もういっそ Tumblr で済ませるってのもアリだなー．</p>
