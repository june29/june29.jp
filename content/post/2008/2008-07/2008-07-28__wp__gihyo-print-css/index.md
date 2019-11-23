+++
title = "プリント用のCSS"
date = "2008-07-28T21:52:05+09:00"
slug = "gihyo-print-css"
draft = false

+++

<p>会社の人が<a href="http://gihyo.jp/design/serial/01/web-design-workshop">連載：WEB DESIGN WORKSHOP「正しいウェブデザイン」｜gihyo.jp … 技術評論社</a>を「キレイに印刷したい！」と泣き喚いていて，このままじゃ近所迷惑だしなーと思って書いた CSS です．</p>
<pre>
#sub,
#secondary,
.utility,
#headerBanner01,
#headerBanner02,
#footer,
#comment,
#trackback,
.primaryBanner,
#backNumber01,
#authorProfile,
.sectionInfo01
{ display:none; }

#main #primary { width: 985px; }
#header { height: 80px; }
</pre>
<p>AutoPagerize で全ページをまとめてから印刷するとさらにベネです．</p>
<h3>Before</h3>
<div class="thumbnail"><a href="http://skitch.com/june29/t6rj/before"><img src="http://img.skitch.com/20080728-fyx6gej54k8efwkkhrksgmwidb.preview.jpg" alt="before" /></a><br /><span style="font-family: Lucida Grande, Trebuchet, sans-serif, Helvetica, Arial; font-size: 10px; color: #808080">Uploaded with <a href="http://plasq.com/">plasq</a>&#8216;s <a href="http://skitch.com">Skitch</a>!</span></div>
<h3>After</h3>
<div class="thumbnail"><a href="http://skitch.com/june29/t6rm/after"><img src="http://img.skitch.com/20080728-d1brwtsbjgxkngmk74j3t24qdi.preview.jpg" alt="after" /></a><br /><span style="font-family: Lucida Grande, Trebuchet, sans-serif, Helvetica, Arial; font-size: 10px; color: #808080">Uploaded with <a href="http://plasq.com/">plasq</a>&#8216;s <a href="http://skitch.com">Skitch</a>!</span></div>
<p>印刷に必要な紙も減りますし，弊社もエコをアピールですね！</p>
