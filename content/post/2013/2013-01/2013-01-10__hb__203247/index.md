+++
title = "1987年以来の西暦4つの数字が違う年"
date = "2013-01-10T20:32:47+09:00"
slug = "203247"
draft = false
og_image = "post/2013/01/10/203247-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/2013/01/10/203247"

+++

<p></p>
<blockquote class="twitter-tweet">
<p><a class="keyword" href="http://d.hatena.ne.jp/keyword/%C5%EC%B9%A9%C2%E7">東工大</a>学長「本学では2013が素数ではないと落胆する学生が多いようですが、2013年は1987年以来の西暦4つの数字が違う年です。つまり多くの学生諸君にとって初めての西暦4つの数字が違う年です！」<a class="keyword" href="http://d.hatena.ne.jp/keyword/%C5%EC%B9%A9%C2%E7">東工大</a>生「うおおおおおおおおおおお！！！！！！！！」</p>— 湘南ペンギン (@shonanpen) <a href="https://twitter.com/shonanpen/status/286340316561305600" data-datetime="2013-01-02T05:17:06+00:00">January 2, 2013</a>
</blockquote>
<br>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
<pre class="code lang-ruby" data-lang="ruby" data-unlink>&gt; <span class="synConstant">1987</span>.upto(<span class="synConstant">2013</span>).each { |<span class="synIdentifier">n</span>| puts <span class="synSpecial">"</span><span class="synConstant">%d : %d</span><span class="synSpecial">"</span> % [n, n.to_s.split(<span class="synSpecial">//</span>).uniq.size] }
<span class="synConstant">1987</span> : <span class="synConstant">4</span>
<span class="synConstant">1988</span> : <span class="synConstant">3</span>
<span class="synConstant">1989</span> : <span class="synConstant">3</span>
<span class="synConstant">1990</span> : <span class="synConstant">3</span>
<span class="synConstant">1991</span> : <span class="synConstant">2</span>
<span class="synConstant">1992</span> : <span class="synConstant">3</span>
<span class="synConstant">1993</span> : <span class="synConstant">3</span>
<span class="synConstant">1994</span> : <span class="synConstant">3</span>
<span class="synConstant">1995</span> : <span class="synConstant">3</span>
<span class="synConstant">1996</span> : <span class="synConstant">3</span>
<span class="synConstant">1997</span> : <span class="synConstant">3</span>
<span class="synConstant">1998</span> : <span class="synConstant">3</span>
<span class="synConstant">1999</span> : <span class="synConstant">2</span>
<span class="synConstant">2000</span> : <span class="synConstant">2</span>
<span class="synConstant">2001</span> : <span class="synConstant">3</span>
<span class="synConstant">2002</span> : <span class="synConstant">2</span>
<span class="synConstant">2003</span> : <span class="synConstant">3</span>
<span class="synConstant">2004</span> : <span class="synConstant">3</span>
<span class="synConstant">2005</span> : <span class="synConstant">3</span>
<span class="synConstant">2006</span> : <span class="synConstant">3</span>
<span class="synConstant">2007</span> : <span class="synConstant">3</span>
<span class="synConstant">2008</span> : <span class="synConstant">3</span>
<span class="synConstant">2009</span> : <span class="synConstant">3</span>
<span class="synConstant">2010</span> : <span class="synConstant">3</span>
<span class="synConstant">2011</span> : <span class="synConstant">3</span>
<span class="synConstant">2012</span> : <span class="synConstant">3</span>
<span class="synConstant">2013</span> : <span class="synConstant">4</span>
</pre>
<p>おお、本当だ！</p>
