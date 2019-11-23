+++
title = "screenコマンドのSオプション"
date = "2008-07-06T16:26:26+09:00"
slug = "screen-session-name"
draft = false

+++

<p>忘れないようにメモ．書かないとすぐ忘れる．</p>
<p>サーバに ssh で接続して作業するときは，必ずと言っていいほど screen コマンドのお世話になる．そんで，作業を中断するときはデタッチしておくんだけど，デタッチしたソケットが増えると，次に作業を再開しようと思ったときにソケットがいっぱいあってどれがどれか分からなくなる．</p>
<pre>
$ screen -ls
There are screens on:
        31344.pts-0.li28-107    (Detached)
        19692.pts-0.li28-107    (Detached)
        4810.pts-0.li28-107     (Detached)
        6929.pts-0.li28-107     (Detached)
        44173.pts-0.li28-107    (Detached)
        10226.pts-0.li28-107    (Detached)
6 Sockets in /var/run/screen/S-june29.
</pre>
<p>これはよくないので，今度から，screen 起動時に S オプションでセッション名を付けてやろうと思った．</p>
<pre>
$ screen -S something
</pre>
<p>こうしておくと，</p>
<pre>
$ screen -ls
There are screens on:
        31344.pts-0.li28-107    (Detached)
        19692.pts-0.li28-107    (Detached)
        4810.pts-0.li28-107     (Detached)
        6929.pts-0.li28-107     (Detached)
        44173.pts-0.li28-107    (Detached)
        10226.pts-0.li28-107    (Detached)
        22832.something         (Detached)
7 Sockets in /var/run/screen/S-june29.
</pre>
<p>のように ls したときに名前が表示されるので分かりやすい．ほんで、リタッチするときは</p>
<pre>
$ screen -r something
</pre>
<p>と名前で指定してやればよい．いい感じいい感じ．</p>
