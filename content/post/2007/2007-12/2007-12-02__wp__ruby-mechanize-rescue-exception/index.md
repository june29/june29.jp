+++
title = "RubyのWWW::Mechanizeの例外処理"
date = "2007-12-02T04:52:36+09:00"
slug = "ruby-mechanize-rescue-exception"
draft = false

+++

<p>こんな感じに書いて動かしているところです．</p>
<pre>
agent = WWW::Mechanize.new {|a| a.log=Logger.new('access.log')}

while # どんどんデータを集める！
  begin
    page = agent.get(url)
  rescue Timeout::Error
    puts "  caught Timeout::Error !"
    retry # タイムアウトしちゃってもあきらめない！
  rescue WWW::Mechanize::ResponseCodeError => e
    case e.response_code
    when "404"
      puts "  caught Net::HTTPNotFound !"
      next # ページが見付からないときは次へ
    when "502"
      puts "  caught Net::HTTPBadGateway !"
      retry # 上手くアクセスできないときはもう1回！
    else
      puts "  caught Excepcion !" + e.response_code
      retry
    end
  end
end
</pre>
<h3>参考</h3>
<ul>
<li><a href="http://d.hatena.ne.jp/cesar/20070328/p2">Net::HTTPの例外補足方法 &#8211; OVERT MEMO</a></li>
<li><a href="http://d.hatena.ne.jp/cesar/20070409/p1">net/httpの例外捕捉方法(2) &#8211; OVERT MEMO</a></li>
</ul>
