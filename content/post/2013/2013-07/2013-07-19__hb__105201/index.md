+++
title = "リレーションモデルにはビューがない"
date = "2013-07-19T10:52:01+09:00"
slug = "105201"
draft = false
og_image = "http://instagram.com/p/b7cWiuKpLR/media/?size=l"
original_url = "http://june29.hatenablog.jp/entry/2013/07/19/105201"

+++

<p>たとえば <a class="keyword" href="http://d.hatena.ne.jp/keyword/Rails">Rails</a> で<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B0%A5%EB%A1%BC%A5%D7%A5%A6%A5%A7%A5%A2">グループウェア</a>をつくろうと思ったとき、ぼくなら、まずは</p>

<ul>
<li>User</li>
<li>Group</li>
<li>Membership</li>
</ul>
<p>みたいな3つのモデルから考えはじめて、次に</p>

<ul>
<li>User has_many Groups through Memberships</li>
<li>Group has_many Users through Memberships</li>
</ul>
<p>みたいな多対多のリレーションを組んで、任意のユーザを任意のグループに所属させて投稿・閲覧を制御できるようなアプリとして設計することだろう。実際のところは、<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B0%A5%EB%A1%BC%A5%D7%A5%A6%A5%A7%A5%A2">グループウェア</a>の要件次第でモデルの設計もリレーションの設計も変わるでしょうよ、ってそれはその通りで、なんだけれど、そこんところの詳細は以降のお話にとっては重要じゃないので、設計についてはいったん上記の案で FIX ということで。</p>
<p>さて、User モデルと Group モデルには show のビューがありそうだ。つまり「ユーザのページ」「グループのページ」がありそうで、きっと /users/june29 とか /groups/web-boyz とか、素直にやればそういうルーティングになるだろう。一方で、多くの場合、Membership モデルにはビューがないと思う。</p>
<p>「ユーザのページ」に「参加しているグループの一覧」があったとしても、そこに表示されるのは User のビューと Group のビューで、そこに Membership の存在もなんとなく感じることはできるけれど、直接的に目で見ることはできない。きっと /memberships/1 みたいな URL をアドレスバーに見かけることは、まず、ないだろう。</p>
<p>そうだ、リレーションは目に映らない。これが、今回のエントリの主題。</p>
<p>目に映らないものと向き合うのは本当にむつかしくて、なんだかんだで、先に、目に映るものにとらわれてしまいがちだと思う。だけれども、だからこそ、そこには「目に映らないものがある」と認識して、意識的にその「関係」を育てていくことで、よりよい状態を目指していけるんじゃないかなぁって思う。</p>
<p><a href="http://instagram.com/p/b7cWiuKpLR/" class="http-image" target="_blank"><img src="http://instagram.com/p/b7cWiuKpLR/media/?size=l" class="http-image" alt="http://instagram.com/p/b7cWiuKpLR/"></a></p>
<p>自分の身近な人を誰かに紹介するとき、その人の点としての性質を順番に並べていくこともできるのだけれど、それだけでは、自分から語る意味が薄れてしまうような気がして。所属は、年齢は、出身は… 必ずしもぼくが言わなきゃいけないことじゃないもんね。だからぼくは、自分という点と、その人という点の、間に引かれる線の色や太さや形、そこに生じる場の雰囲気とか空気感について、話したくなる気持ちがある。「あいつと一緒にいると、こういうことが起こっておもしろいんだよね」なんてのは、ぼくの口からよく出るフレーズだと思うな。</p>
<p>ふたつの磁石の間に砂をまいて、磁場のカタチを確認するように。人と人の間にも、他の人を置いてみたり、いろんな出来事を置いてみたりして、そこにどんな関係があるのかを知ろうとするのは、とってもおもしろくて、ぼくはそういうのが大好きだ。</p>
