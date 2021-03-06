+++
title = "ターミナル・マルチプレクサの話"
date = "2015-06-29T14:23:04+09:00"
slug = "142304"
draft = false
og_image = "post/2015/06/29/142304-og-image.png"
original_url = "http://june29.hatenablog.jp/entry/2015/06/29/142304"

+++

<p>大学生の終わり頃だったか大学院生の始まり頃だったか、<a class="keyword" href="http://d.hatena.ne.jp/keyword/Linux">Linux</a> マシンに <a class="keyword" href="http://d.hatena.ne.jp/keyword/ssh">ssh</a> 接続して作業することが増えて、たしかそのときにターミナル・マルチプレクサの screen を導入したのだったと思う。</p>

<p><a href="https://www.gnu.org/software/screen/" title="GNU Screen - GNU Project - Free Software Foundation">GNU Screen - GNU Project - Free Software Foundation</a></p>

<p>とはいえ、それから数年間のぼくは、手元の <a class="keyword" href="http://d.hatena.ne.jp/keyword/MacBook">MacBook</a> 類で作業することがほとんどになり、稀に <a class="keyword" href="http://d.hatena.ne.jp/keyword/ssh">ssh</a> 先のマシンで作業します、という感じだったので、設定ファイル .screenrc をごりごりにカスタマイズするようなこともなく、特に困ることもなく緩めの screen ユーザとして暮らしてきた。</p>

<p>先日、人にターミナル・マルチプレクサを勧める機会があって(接続先で時間のかかる処理を実行しているとき、ネットワーク接続が切れちゃうと処理がやり直しになって困る、とのこと、よくわかります)、何も考えずに screen を勧めてもよかったのだけれど、2015年だし、ぼくの都合だけで tmux を黙殺するのはフェアじゃないなぁと思って tmux も試しておいた。</p>

<p><a href="http://tmux.github.io/" title="tmux">tmux</a></p>

<p>.screenrc をごりごりにカスタマイズしていたわけではない現状が幸いし、ほとんど違和感なく tmux も使うことができた。適当にどっちかを勧めておこうと思う。ふつうに使う分にはどっちでもいいよね。新しい方でいいか。</p>
