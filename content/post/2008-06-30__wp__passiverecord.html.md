+++
title = "PassiveRecord，ハッシュをActiveRecordのインタフェースで使う"
date = "2008-06-30T12:26:33+09:00"
slug = "passiverecord"
draft = false

+++

<p><a href="http://github.com/ambethia/passiverecord/tree/master">PassiveRecord</a> を使ってみた．</p>
<p>PassiveRecord は，ハッシュを ActiveRecord っぽく扱えるようにしてくれる．要 ActiveRecord．</p>
<pre>
# コマンドラインから gem でインストール
$ sudo gem install passiverecord

# 使うときは require
require 'passive_record'
</pre>
<p>今回動かした環境では ActiveRecord と PassiveRecord を両方 require したら</p>
<pre>
Gem::Exception: can't activate activerecord (>= 0, = 1.15.3), already activated activerecord-2.0.2.9216]
</pre>
<p>とエラーが出たので， PassiveRecord だけ require するようにした．</p>
<p>アプリの中で，ほとんど追加・更新がないようなデータ，テーブルを作って管理するよりは，オンメモリで処理したいデータ，など，あるかと思います．</p>
<p>README を見ればすぐに使い方は分かる．クラス定義の中にレコードも書く．ActiveRecord と同じように find で必要なものだけ取り出したり，has_many で他のクラスとのリレーションを記述したりできるので，ハッシュでデータを持つより扱いやすい．</p>
<pre>
class Continent < PassiveRecord::Base
  has_many :countries # => an ActiveRecord class

  schema :name => String, :size => Integer, :population => Integer

  create :name => "Africa",        :size => 30370000, :population =>  890000000
  create :name => "Antarctica",    :size => 13720000, :population =>       1000
  create :name => "Australia",     :size =>  7600000, :population =>   20000000
  create :name => "Eurasia",       :size => 53990000, :population => 4510000000
  create :name => "North America", :size => 24490000, :population =>  515000000
  create :name => "South America", :size => 17840000, :population =>  371000000
end

Continent.find(1)                                    # => Africa
Continent.find_by_name("Africa")                   # => Yes, also Africa
Continent.find_by_name_and_size(/America/, 17840000) # => South America
Continent.find_all_by_population(1000..20000000)     # => Antarctica and Australia
Continent.find(:all)                                 # => All 6 (though not in any particular order, yet)
</pre>
<p><a href="http://github.com/ambethia/passiverecord/tree/master/README">README</a> を見ると</p>
<pre>
* some integrated ActiveRecord associactions, ie: ActiveRecord#belongs_to(:passive_record)
  PassiveRecord#has_many(:active_records) (excluding has_many :through)
</pre>
<p>「has_many :throught は使えないよ」って書いてあるんだけど，<a href="http://github.com/ambethia/passiverecord/tree/master/CHANGELOG">CHANGELOG</a> には</p>
<pre>
v0.2. has_many :through is in the house.
</pre>
<p>「v0.2 で has_many :throught 登場！」っぽく書いてある．よく分からないけど，試しにコードを書いてみたら動いたから，多分，実装されていると思うよ！</p>
<h3>雑感</h3>
<p>ソースコードを書き換えるだけでテーブルのスキーマを書き換えられるので，アプリ開発の序盤，まだモデルの詳細まで決まっていない段階で，とりあえず動くものを作りたいときには，PassiveRecord 良さげ．モックとして使える．必要になればすぐに ActiveRecord に置き換えることができる．</p>
<h3>関連</h3>
<p><a href="http://www.plab.jp/blog/2008/03/22/passiverecord.html">PassiveRecordで不要なクエリ発行を抑える &#8211; pLab blog</a></p>
