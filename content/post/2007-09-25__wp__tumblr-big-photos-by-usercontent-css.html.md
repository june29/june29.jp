+++
title = "Tumblr Big PhotosをuserContent.cssで (V3用に追記あり)"
date = "2007-09-25T07:56:23+09:00"
slug = "tumblr-big-photos-by-usercontent-css"
draft = false

+++

<p><a href="http://www.tumblr.com/dashboard" target="_blank">Tumblrのダッシュボード</a>でサムネイル化されている写真を大きく表示してくれる<a href="http://userscripts.org/scripts/show/11677" target="_blank">Tumblr Big Photos</a>の効果をユーザスタイルシートで実現してみた．ムリヤリHTMLを書き換える感じの動作がなくなるので，こっちの方がいいかもしれないね．</p>
<p>プロファイルディレクトリ内のuserContent.cssに以下の記述を追加する．この手の設定ファイルを触るときには<a href="https://addons.mozilla.org/ja/firefox/addon/421" target="_blank">MR Tech Local Install</a>があると便利！一生懸命ディレクトリを掘り下げていかなくても，メニューから開けるようになるので，プロファイルディレクトリを開くのに苦労している人は試してみてください．</p>
<pre>
/*
 * Tumblr Big Photos
 *
 */

@-moz-document url-prefix(http://www.tumblr.com/dashboard) {
        ol#posts li.dim div.post_container {
                opacity: 1 !important;
        }
        ol#posts li.dim {
                background-color: #EEE !important;
        }

        a[id*=big_photo] {
                display : inline !important;
        }

        a[id*=small_photo] {
                display : none !important;
        }
}
</pre>
<h3>追記</h3>
<p>tumblr V3.0 になって，上記のCSSじゃ意味がなくなりました．V3.0用は次のようになります．</p>
<pre>
@-moz-document url-prefix(http://www.tumblr.com/dashboard), url-prefix(http://www.tumblr.com/show) {
    div[id^=big_photo_] {
      display : inline !important;
    }

    a[id^=small_photo_] {
      display : none !important;
    }
}
</pre>
