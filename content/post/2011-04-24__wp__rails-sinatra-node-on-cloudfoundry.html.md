+++
title = "Cloud FoundryにRails/Sinatra/Nodeアプリをデプロイしてみた"
date = "2011-04-24T01:47:26+09:00"
slug = "rails-sinatra-node-on-cloudfoundry"
draft = false

+++

<p>4月13日にサインアップ申請をしておいた Cloud Foundry から「準備できたよー」のメールが届いたので、さっそく触ってみました。今なら、サインアップから10日くらいで使えるようになるってことでしょうかね。</p>
<blockquote><p>
The industry’s first open platform as a service. Run your Spring, Rails and Node.js applications. Deploy from your IDE or command line.</p>
<p><a class="quote" href="http://cloudfoundry.com/" title="Welcome to Cloud Foundry">Welcome to Cloud Foundry</a>
</p></blockquote>
<p><img src="http://img.skitch.com/20110423-n4ykcgq31et1fxfu8pu94289d8.png" alt="Welcome to Cloud Foundry" /></p>
<p>今回は Rails アプリ、Sinatra アプリ、Node アプリのデプロイを試してみました。ソースコード一式を GitHub においてあります。</p>
<p><a href="https://github.com/june29/cloudfoundry-samples">june29/cloudfoundry-samples &#8211; GitHub</a></p>
<p><a href="http://www.flickr.com/photos/june29/5645541784/" title="GitHub Mug by june29, on Flickr"><img src="http://farm6.static.flickr.com/5110/5645541784_0c5b55de3d_z.jpg" width="640" height="428" alt="GitHub Mug"></a></p>
<p>(写真は本文と関係ありません。手に入って嬉しかったので載せました)</p>
<h3>準備</h3>
<p>コマンドラインのクライアントを gem でインストールしました。</p>
<pre>
$ gem install vmc
$ vmc -v
vmc 0.3.10
</pre>
<h3>Rails アプリ</h3>
<p>普通に Rails アプリをつくって、プロジェクトのディレクトリで vmc push を実行します。</p>
<pre>
$ vmc push

Would you like to deploy from the current directory? [Yn]: Y
Application Name: sample29rails
Application Deployed URL: 'sample29rails.cloudfoundry.com'?
Detected a Rails Application, is this correct? [Yn]: Y
Memory Reservation [Default:256M] (64M, 128M, 256M, 512M or 1G) 64M
Creating Application: OK
Would you like to bind any services to 'sample29rails'? [yN]: N
Uploading Application:
  Checking for available resources: OK
  Processing resources: OK
  Packing application: OK
  Uploading (15K): OK  
Push Status: OK
Staging Application: OK                                                        
Starting Application: OK

</pre>
<p>scaffold だけでつくったアプリをデプロイしてあります。普通にデータベースに書き込めている感じ。</p>
<p><a href="http://sample29rails.cloudfoundry.com/">http://sample29rails.cloudfoundry.com/</a></p>
<h3>Sinatra アプリ</h3>
<p>app.rb を書いただけ。これだけで vmc push したら動きました。</p>
<pre>
$ vmc push

Would you like to deploy from the current directory? [Yn]: Y
Application Name: sample29sinatra
Application Deployed URL: 'sample29sinatra.cloudfoundry.com'?
Detected a Sinatra Application, is this correct? [Yn]: Y
Memory Reservation [Default:128M] (64M, 128M, 256M, 512M or 1G) 64M
Creating Application: OK
Would you like to bind any services to 'sample29sinatra'? [yN]: N
Uploading Application:
  Checking for available resources: OK
  Packing application: OK
  Uploading (0K): OK  
Push Status: OK
Staging Application: OK                                                        
Starting Application: OK

</pre>
<p><a href="http://sample29sinatra.cloudfoundry.com/">http://sample29sinatra.cloudfoundry.com/</a></p>
<h3>Node アプリ</h3>
<p>ファイル名は app.js にしておく必要があると書いてあったのでそうしてみたら動きました。express を使ってみたので、package.json を書かなきゃいけなくて、npm bundle も実行しておかなきゃいけない。</p>
<p>参考にしたのは <a href="http://support.cloudfoundry.com/entries/505133-deploying-a-node-js-app-with-npm-dependencies">Deploying a Node.JS app with NPM dependencies : Cloud Foundry Community</a> です。</p>
<pre>
$ vmc push

Would you like to deploy from the current directory? [Yn]: Y
Application Name: sample29node
Application Deployed URL: 'sample29node.cloudfoundry.com'?
Detected a Node.js Application, is this correct? [Yn]: Y
Memory Reservation [Default:64M] (64M, 128M, 256M, 512M or 1G) 64M
Creating Application: OK
Would you like to bind any services to 'sample29node'? [yN]: N
Uploading Application:
  Checking for available resources: OK
  Processing resources: OK
  Packing application: OK
  Uploading (123K): OK  
Push Status: OK
Staging Application: OK                                                        
Starting Application: OK

</pre>
<p><a href="http://sample29node.cloudfoundry.com/">http://sample29node.cloudfoundry.com/</a></p>
<h3>おまけ</h3>
<p><a href="http://www.heroku.com/">Heroku</a> の heroku コマンドと同じ感覚で適当にコマンドを打ったら通るので面白かったです。</p>
<p>デプロイしたアプリの一覧を見るときは vmc list でした。</p>
<pre>
$ vmc list

+-----------------+----+---------+----------------------------------+----------+
| Application     | #  | Health  | URLS                             | Services |
+-----------------+----+---------+----------------------------------+----------+
| sample29sinatra | 1  | RUNNING | sample29sinatra.cloudfoundry.com |          |
| sample29node    | 1  | RUNNING | sample29node.cloudfoundry.com    |          |
| sample29rails   | 1  | RUNNING | sample29rails.cloudfoundry.com   |          |
+-----------------+----+---------+----------------------------------+----------+

</pre>
<p>デプロイしたアプリを削除するときは vmc delete です。</p>
<pre>
$ vmc delete #{app_name}
</pre>
<p>あとあと、vmc push したけど「何のアプリケーションか分からなかったよ」ってときは、以下のようになります。</p>
<pre>
$ vmc push

Would you like to deploy from the current directory? [Yn]: Y
Application Name: sample29
Application Deployed URL: 'sample29.cloudfoundry.com'?
[WARNING] Can't determine the Application Type.
Select Application Type: (Rails, Spring, Grails, Roo, JavaWeb, Sinatra or Node)

</pre>
<p>内部では、どのようにアプリケーションを判別しているのでしょうね。ちょっと興味があります。</p>
<h3>まとめ</h3>
<p>「Heroku さんが息をしていないから…」というわけでもないのですが、Web アプリのホスティング先として Heroku 以外の選択肢があってもいいですよね。<a href="http://code.google.com/intl/en/appengine/">Google App Engine</a> も視界にはありつつあんまり手が伸びていなくて、Cloud Foundry は「Rails も Sinatra も最初から動くよ」と謳っていたので勢いで触ってみました。Node アプリが動くという意味では <a href="http://www.joyent.com/">Joyent</a> に並ぶ選択肢にもなるので嬉しいですね。</p>
<p>Heroku の場合は「ああ、git で push すればいいのか」だったのが、Cloud Foundry の vmc コマンドは、独自に覚えることが多くなりそうです。パッと触ってみたところでは「よく分かっていないけれど動かせている」感じで、もうちょっと踏み込んだことをしようと思ったら、色々と調べる必要が出てきそうです。</p>
<p>今後もちょこちょこ触ってみようと思いました！おしまい。</p>
<p><ins datetime="2011-04-25T11:03:42+00:00"><br />
もっとちゃんと説明してあるエントリを見つけたのでリンクしておきます！</ins></p>
<p><a href="http://d.hatena.ne.jp/y-kawaz/20110425/1303708958">VMware発のPaaS、CloudFoundryを試してみた &#8211; y-kawazの日記</a></p>
