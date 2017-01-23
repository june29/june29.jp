+++
title = "ニコニコ動画のマイリストの動画をビデオキャスティングしたくて"
date = "2007-09-21T18:35:12+09:00"
slug = "nicovideo-mylist-videocasting"
draft = false

+++

<p>嫁にiPodをプレゼントしてもらった友人のために，ニコニコ動画のマイリストの動画を落としてきて形式を変換してiTunes経由でiPodにブチ込めるようにしたかった．これPlaggerで！</p>
<p><a href="http://yusukebe.com/archives/07/08/09/105502.html" target="_blank">ゆーすけべー日記: Plaggerでニコニコ動画のFLVとコメントを一括ダウンロード！</a></p>
<p>Erogeekのゆーすけべーさんの記事が大変素晴らしかったので，参考にさせていただきましたァン！<a href="http://yusukebe.com/tech/archives/20070808/110245.html" target="_blank">Plagger::Plugin::Filter::FetchNicoVideo</a>をありがたく使わせてもらいます．</p>
<p>8月下旬にニコニコ動画のログインのシステムが変わったからでしょうか，上述のP::P::F::FetchNicoVideoが動かなくなっていたので1ヶ所だけ修正．プログラム107行目のログインURLを</p>
<pre>
http://www.nicovideo.jp/login
</pre>
<p>から</p>
<pre>
https://secure.nicovideo.jp/secure/login?site=niconico
</pre>
<p>に変更すると動くようになりました．色々と助けてくれた<a href="http://d.hatena.ne.jp/kei-s" target="_blank">kei-s</a>さん，本当にどうもありがとう！</p>
<p>こうして，指定したマイリストの動画のFLVをダウンロードしてくるところまではできたのだけれど，形式変換が上手くいかなくて手詰まり．今回は Fedora Core 5 上でPlaggerを動かしていて，以前にインストールしたFFmpegでYouTubeから落としてきたFLVはiPodの対応形式に変換できたのだけれど，ニコニコ動画のFLVではダメだった．一度，SVNの最新リビジョンをチェックアウトしてきてFFmpegをインストールしなおしてから再チャレンジしたら，FFmpegが実行されるタイミングで</p>
<pre>
/usr/local/bin/ffmpeg: error while loading shared libraries: libavformat.so.51: cannot open shared object file: No such file or directory
</pre>
<p>が出るようになった．FFmpegが動かなくなってしまったよ．困った困った．</p>
<p>ここまでで，一旦ログを残しておく．進捗があれば追記しよう．</p>
<h3>追記</h3>
<pre>
/usr/local/bin/ffmpeg: error while loading shared libraries: libavformat.so.51: cannot open shared object file: No such file or directory
</pre>
<p>上述のエラーではライブラリが読み込めないとのことだったので，シンボリックリンクを張って解決した．</p>
<pre>
$ ln -s  /usr/local/lib/libavformat.so.51 /usr/lib/libavformat.so.51
$ ln -s  /usr/local/lib/libavcodec.so.51 /usr/lib/libavcodec.so.51
$ ln -s  /usr/local/lib/libavutil.so.49 /usr/lib/libavutil.so.49
</pre>
<p>これでFFmpegは動くようになった．次のエラーです．</p>
<pre>
Plagger::Plugin::Filter::FFmpeg [info] Converting Prince the ripper ...
Plagger::Plugin::Filter::FFmpeg [error] FFmpeg version SVN-r10533, Copyright (c) 2000-2007 Fabrice Bellard, et al.
  configuration: --enable-shared
  libavutil version: 49.5.0
  libavcodec version: 51.44.0
  libavformat version: 51.13.4
  built on Sep 20 2007 05:14:03, gcc: 4.1.1 20070105 (Red Hat 4.1.1-51)

Seems stream 0 codec frame rate differs from container frame rate: 1000.00 (1000/1) -> 29.97 (30000/1001)
Input #0, flv, from '/var/www/html/videocast/Prince the ripper.flv':
  Duration: 00:02:11.2, start: 0.000000, bitrate: 64 kb/s
  Stream #0.0: Video: vp6f, yuv420p, 320x240, 29.97 fps(r)
  Stream #0.1: Audio: mp3, 44100 Hz, stereo, 64 kb/s
Unknown encoder 'aac'
</pre>
<p>AACが分からないって言っているのか．</p>
<h3>追々記</h3>
<p><a href="http://ffmpeg.mplayerhq.hu/general.html#SEC7" target="_blank">General Documentation</a>によると，FFmpegはAACのエンコーディングに対応していなくて，外部ライブラリのlibfaacを使えとのこと．FFmpegのconfigureファイルにもlibfaacに関する記述があった．</p>
