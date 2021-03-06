+++
title = "このブログを Hugo で再構築しました"
date = "2017-01-22T00:00:00+09:00"
draft = false
slug = "hello-hugo"
description = "サイトを Hugo で作り直した話です。さらっとした内容です。"
og_image = "post/2017/01/22/hello-hugo.png"

+++

2006年6月29日に、当時23歳だったぼくが <a href="http://june29.jp/2006/06/29/birth/">Birth.</a> というエントリを書いてスタートさせた当ブログ。最初は「cameralady」という名前でした。それから10年以上が経ち、今では33歳になったぼくが Hugo でブログを再構築しました。

<a href="https://gohugo.io/">Hugo :: A fast and modern static website engine</a>

<img src="/post/2017/01/22/hello-hugo.png" alt="Hugo" title="Hugo">

実は2016年中には完了させるつもりで12月に作業していたのだけれど、最初に選んだ方法ではうまくいかなくて、あれやこれやと試行錯誤しているうちに2017年を迎えてしまったのでした😌

もともと、2年周期くらいで「ブログを1から作り直したい」という衝動がわいてくる10年間を過ごしてきて、2〜3年前に自分のブログシステムの要件を考えたときには「スマートフォンからも更新できる」を含めていたように思います。なんだけれど、スマートフォンのある暮らしを数年続けてみて、自分はスマートフォンでまとまった量の文章を書くことはほとんどないと気付いてしまったので、それは要件から外しました。

だとすると、あとはもう基本的には MacBook でしか書かないわけですから、使い慣れたエディタで文章をダダダンと書いて、使い慣れた Git で push したら記事が投稿される、というのでよかろうと。静的サイトジェネレータでブログを再構築する方針に決めたのでした。

- もともと WordPress で動かしていた june29.jp の全エントリをパーマリンクも変更せずに移行する
- 自分的に「エッセイを書く場所」という位置付けで運用してきた june29.hatenablog.jp のエントリもいい感じに統合する
  - はてなスター、はてなブックマーク、Facebook の Like あたりの数は、捨てるのはモッタイナイので元エントリのものを表示したい
- 2017年なので、ちゃんとスマートフォンからアクセスしたときにも読みやすくなるように配慮する

…というくらいの要件で、ゆるゆる〜っと移行作業をしました。細かいところはぜんぜん手が回っていないので、これから趣味としていろいろと手を加えて遊びながら少しずつ整えていきたいと思います。まずは自動デプロイの仕組みを整えるぞ〜。
