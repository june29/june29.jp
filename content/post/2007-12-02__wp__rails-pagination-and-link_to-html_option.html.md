+++
title = "RailsのPagenationとlink_toのhtml_option"
date = "2007-12-02T03:40:29+09:00"
slug = "rails-pagination-and-link_to-html_option"
draft = false

+++

<p>最近ちょこちょこ触っているRailsの話を少しだけ書きます．検索してもあまり出てこない話なので，キーワードを散りばめつつ書いてみよう！</p>
<h3>RailsのPagination</h3>
<p>Railsには<a href="http://api.rubyonrails.org/classes/ActionController/Pagination.html">Pagination</a>という仕組みがあって，よくあるページング処理を簡単に実現できます．例えば，controller側で</p>
<pre>
# controllers/model_controller.rb

class ModelController < ApplicationController
  def index
    @model_pages, @models = paginate :models, :per_page => 10
  end
end
</pre>
<p>と書いておくと，viewの方では</p>
<pre>
# views/model/index.rhtml

  &lt;ul&gt;
    < %- for m in @models -%>
    &lt;li&gt;m.name&lt;/li&gt;
    < %- end -%>
  &lt;/ul&gt;

  &lt;%= link_to 'Previous page', { :page => @model_pages.current.previous } if @model_pages.current.previous %&gt;
  &lt;%= link_to 'Next page', { :page => @model_pages.current.next } if @model_pages.current.next %&gt;

</pre>
<p>と書くだけで1ページにper_page分ずつ表示してくれて，前後のページへのリンクも出せちゃうわけです．と，まぁここまではただのPaginationの話で，詳しい説明がWeb上にたくさんあるので見つかるでしょう．このPaginationはRails 2.0ではプラグイン扱いになるようですね！使い方が変わるでしょうから要チェックです．</p>
<h3>link_toのhtml_option</h3>
<p>さてさて，ページング処理を実装するようなサイトでしたら，AutoPagerizeに対応させたくなるのが人情ってもんです．そのためには次のページへのリンクに「@rel=&#8221;next&#8221;」を付与する必要があります．しかし！ a タグは link_to メソッドで自動生成しているから，属性を付与できません！とか騒いでいたら，link_to メソッドには html_option なるものがありました．ちゃんと<a href="http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#M000491">ドキュメント</a>を読めって話でした．</p>
<pre>
  &lt;%= link_to 'Next page', { :page => @model_pages.current.next }, { :rel => "next" } if @model_pages.current.next %&gt;
</pre>
<p>こうしてやればOKです．aタグにclassやidを振りたいときにもhtml_optionが必要ですね．覚えておこう．</p>
