+++
title = "指定のWebページに含まれる単語の出現回数をカウントする"
date = "2008-11-30T03:50:22+09:00"
slug = "ruby-word-count-in-web-page"
draft = false

+++

<p><script src="http://gist.github.com/29869.js"></script></p>
<p>HTML を Nokogiri に渡してテキストノードの内容だけを切り出して文字列にする．あとは文字列の中から単語っぽいものを見つけて計上する．文の解析はしていないから日本語とかは無理だ．</p>
<h3>Example</h3>
<pre>
ranking = count_word("http://infolab.stanford.edu/~backrub/google.html")

ranking.each do |word|
  puts "#{word[0]}\t#{word[1]}"
end
</pre>
<p>とすると</p>
<pre>
the		601
of		397
a		303
to		284
and		230
is		189
in		173
search	141
web		128
that		107
for		103
we		103
this		96
are		96
it		82
be		72
google	70
on		65
by		55
which	54
with		51
as		49
text		49
page		48
engine	48
results	47
pages	46
engines	46
have		46
from		45
can		44


(以下略...)
</pre>
<p>な感じです．</p>
