+++
title = "消せないファイル"
date = "2008-10-26T20:02:39+09:00"
slug = "un-removable-files"
draft = false

+++

<p>今，ボクの愛機 MacBook には，数匹の消せないファイルが潜んでいる．</p>
<p>──話を1週間ほどさかのぼろう．</p>
<h3>Linux からファイルをコピー</h3>
<p>使い古した Linux 機をクリーンにする準備として，同一ネットワークにつないだ MacBook から scp コマンドを打ってファイルのバックアップを取っていた．必要そうなディレクトリを丸ごとコピーしたんだ．</p>
<p>コピーが終わって，改めてディレクトリの中身を見てみると，不要なものもあると気が付いた．そこで，ファイルの削除を試みた．これが悲劇の始まりだった．</p>
<p><img src="http://img.skitch.com/20081026-cyy7yk6tiey6ri2eg494h3rt9d.png" alt="6D883048306A304430D530A130A430EB"/></p>
<p class="photo-caption">それは文字化けッ！</p>
<p>(ファイル名の一部はプライバシー的な理由で隠しています)</p>
<p>左のファイルを見てもらうと分かる通り，ファイル名になんやらよく分からない文字が入り込んでいて，お察しの通りこいつらが消せないファイルってわけです．</p>
<h3>不死身</h3>
<p>こいつらが格納されているディレクトリに移動して ls を打つと「そんなファイルない」と言われる．</p>
<p><img src="http://img.skitch.com/20081026-gpfk2t41aqgbb2fie3ite9np5g.png" alt="Terminal"/></p>
<p class="photo-caption">No such file or directory</p>
<p>そう，恐ろしいことだけど，こいつらの名前を呼ぶことができない．名前を呼ぶことができないってことは，コマンドの引数に渡してやることができないんだ．目の前にいるのに殺せない．こいつらはのうのうと「私が _%82%A8%8E%F0%82݂̂%BD%82%A2_%82ȋ%C8 です」っていきなり名乗ってくるんだけど，何を言っているか聞き取れなくてデスノートに名前を書けない状態．ダメだこいつ… 早くなんとかしないと…</p>
<p>色々と試してみたけど，やっぱり名前が壊れているとどうにもならないらしく，最後に頼ったのが Finder の「確実にゴミ箱を空にする…」コマンド．</p>
<p><img src="http://img.skitch.com/20081026-ky3imrfyrp8msp82bb7hw8k36u.png" alt="78BA5B9F306B30B430DF7BB130927A7A306B3059308B2026"/></p>
<p class="photo-caption">テメェーッ、サッサトあの世へ行キヤガレェェェェ、コノクソガアアアァァ</p>
<p class="photo-caption">イツマデモコノ世ニヘバリ付イテンジャアネェェーーーッ、コラァァァーーッ</p>
<p><img src="http://img.skitch.com/20081026-mh6xhf5issjfi6mnthe9hks6ay.png" alt="Finder"/></p>
<p class="photo-caption">頼もしいメッセージ</p>
<p class="photo-caption">WANNA BE 状態で OK ボタンを押す</p>
<p><img src="http://img.skitch.com/20081026-8und9mr8adndrpiaj7bdurk2tr.png" alt="30B430DF7BB1"/></p>
<p class="photo-caption">くそォォ なぜだァア なぜくたばらねぇ～～～～</p>
<p> と，戸愚呂兄状態で泣き叫んでみても，ファイルは一向に消えてくれる気配を見せない．困ったなぁ．</p>
<h3>今ここ</h3>
<p>そして消したいと思っても消せないので── そのうちボクはカーズ状態に陥って考えるのをやめた．</p>
