+++
title = "私が簡易なクローラをつくるとき"
date = "2016-08-18T23:57:34+09:00"
slug = "some-tips-for-making-web-crawler"
draft = false
og_image = "post/2016/08/18/some-tips-for-making-web-crawler-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/some-tips-for-making-web-crawler"

+++

<h4>はじめに</h4>

<p>お盆の前後にまとまった自由時間があり、久しぶり (といっても数ヶ月ぶりくらい) に Web クローラ的なものを書いた。大量のデータが収集されていくログの様子を眺めるのは楽しい。今回も楽しかった。</p>

<p><span itemscope itemtype="http://schema.org/Photograph"><img src="/post/2016/08/18/some-tips-for-making-web-crawler-20160818001157.png" alt="f:id:june29:20160818001157p:plain" title="f:id:june29:20160818001157p:plain" class="hatena-fotolife" itemprop="image"></span></p>

<p>再利用するかどうかもその時点ではわからない簡易な Web クローラを書くとき「だいたいこんな感じだな」というのを言語化してみる試み。この内容は、何度かいっしょにクローリング業務をこなしたことのある <a href="https://twitter.com/darashi">@darashi</a> に大きく影響を受けているだろうな、ってことは最初に書いておこう。最近は共同クローリングがごぶさたなので、またいっしょにやりたいなって思っています。</p>

<h4>作業の流れ</h4>

<ul>
<li>(01) あんまりクラス設計とか気にせず、処理の流れを思いつくままに書いていく

<ul>
<li>最初のエントリポイントにアクセスして、データを取得して、ストレージに保存して、ってな感じで</li>
</ul>
</li>
<li>(02) 効率のよいクローリング戦略を考えながら、ページングやループの終了条件のロジックを書く</li>
<li>(03) こんなもんかな〜っていう処理が書けたら、とにかく起動して適当に動かしてみる</li>
<li>(04) 想定した通りのデータの形をしているときはいい感じに動くものの、ほぼ間違いなく想定外の形のデータに遭遇してエラーを吐いて死ぬ</li>
<li>(05) 遭遇した想定外の形のデータに合わせて処理をプチ更新する</li>
<li>(06) 何度か (04)〜(05) を繰り返しているうちに、次第にしっかりと動くクローラの姿になってくる</li>
<li>(07) ある程度の量のデータを収集できてくると、このデータの持ち方じゃ破綻するな〜とわかってくるタイミングが訪れる</li>
<li>(08) ここまでに収集したデータをぜんぶ捨てるつもりで、最新の知見をもとにデータの持ち方を設計して実装に反映させる</li>
<li>(09) ここまでくると、動かせば動かすだけデータを集められるようになるので、<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B9%A5%AF%A5%EA%A5%D7%A5%C8">スクリプト</a>を再起動したときにいい感じに続きから実行してくれるようなレジューム機構を入れる</li>
<li>(10) そろそろけっこう堅牢なクローラになっているので、ひたすら動かしておいて、外的要因で止まったら自動で再起動するような仕組みを入れて動かし続ける</li>
<li>(11) お目当てのデータがたくさん集まってきて、桶屋が儲かる</li>
</ul>


<h4>コツっぽいもの</h4>

<ul>
<li>(A) 取得したデータは、なるべく取得したまんまの生データを保存しておく

<ul>
<li>加工した上で保存すると、加工方法を変えたときに最初からデータを取り直す羽目になる</li>
<li>データの取得と加工は別工程と考えておくのが吉</li>
<li>特に HTML は「<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B9%A5%AF%A5%EC%A5%A4%A5%D4%A5%F3%A5%B0">スクレイピング</a>して、必要なデータだけ保存」って、昔のぼくはやりがちだった、今はとりあえず HTML を丸ごと保存する</li>
<li>これは <a href="https://twitter.com/darashi">@darashi</a> がそうしているのを見て真似した</li>
</ul>
</li>
<li>(B) <a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B9%A5%AF%A5%EA%A5%D7%A5%C8">スクリプト</a>の起動時とか「データ取得10,000件ごと」とか例外発生時とか、わかりのいいタイミングで Slack 等へ通知させるとよい

<ul>
<li>基本は放置で動かしておきたいけど、進捗とか異常系はちょいちょい把握したいときに便利</li>
<li>手元の開発マシンを離れて <a class="keyword" href="http://d.hatena.ne.jp/keyword/VPS">VPS</a> なんかで動かす場合にも、コンソールへのログ以外に Slack 等に通知しておくと移動中にも確認できて便利だったり</li>
</ul>
</li>
</ul>


<p>他にもある気がするので、思い付いたら追記したい。</p>

<p>しかし、最近は Web <a class="keyword" href="http://d.hatena.ne.jp/keyword/API">API</a> が豊富で、きれいにフォーマットされた <a class="keyword" href="http://d.hatena.ne.jp/keyword/JSON">JSON</a> が簡単に手に入るから、昔みたいに「クローラとスクレイパの両方をがんばらなきゃいけない」ってことが減ってきた。<a class="keyword" href="http://d.hatena.ne.jp/keyword/%A5%B9%A5%AF%A5%EC%A5%A4%A5%D4%A5%F3%A5%B0">スクレイピング</a>職人は働き口も後継者も見つからず、このまま絶滅してしまいそう。</p>