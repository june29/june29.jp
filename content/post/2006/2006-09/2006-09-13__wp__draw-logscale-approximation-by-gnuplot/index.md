+++
title = "(転載)gnuplotでlogscaleの近似直線を描く"
date = "2006-09-13T19:30:02+09:00"
slug = "draw-logscale-approximation-by-gnuplot"
draft = false

+++

<p>研究室の同期と立ち上げたwikiより転載．</p>
<blockquote><p>
gnuplotのコマンドラインから<br />
[code]<br />
set logscale<br />
plot &#8216;データファイル&#8217;<br />
f(x) = x**a * exp(b)<br />
fit f(x) &#8216;データファイル&#8217; via a,b<br />
replot f(x)<br />
[/code]<br />
ちなみに、logscaleを元に戻すのはunset logscale。
</p></blockquote>
<p>Thanx to kei-s</p>
