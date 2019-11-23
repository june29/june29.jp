+++
title = "P::P::Publish::MixiDiaryに「interval」を追加"
date = "2006-11-01T16:02:30+09:00"
slug = "plagger-mixidiary-interval"
draft = false

+++

<p>ありがたく使わせていただいている<a href="http://xcezx.net/blog/development/plagger-plugin-publish-mixidiary-2.html" target="_blank">P::P::Publish::MixiDiary</a>ですが，<a href="http://plagger.org/trac/browser/trunk/plagger/lib/Plagger/Plugin/Publish/HatenaBookmark.pm" target="_blank">P::P::Publish::HatenaBookmark</a>などのように「interval」を設定できたら便利だなぁということでやりました．ほとんど何も変えていないけれど一応メモとして残しておきます．</p>
<p><a href="http://libelabo.jp/MixiDiary.pm" target="_blank">MixiDiary.pm</a><br />
[perl]<br />
package Plagger::Plugin::Publish::MixiDiary;<br />
use strict;<br />
use warnings;<br />
use base qw ( Plagger::Plugin );</p>
<p>use WWW::Mixi;<br />
use Encode;<br />
use Time::HiRes qw(sleep);</p>
<p>sub register {<br />
  my($self, $context) = @_;<br />
  $context->register_hook(<br />
    $self,<br />
    &#8216;publish.init&#8217;  => \&#038;initialize,<br />
    &#8216;publish.entry&#8217; => \&#038;post_diary,<br />
  );<br />
}</p>
<p>sub initialize {<br />
  my($self, $context, $args) = @_;</p>
<p>  my $cookie_jar = $self->cookie_jar;<br />
  if (ref($cookie_jar) ne &#8216;HTTP::Cookies&#8217;) {<br />
    $self->conf->{username} ||= &#8217;email@example.com&#8217;,<br />
    $self->conf->{password} ||= &#8216;p4ssw0rd&#8217;,<br />
  }</p>
<p>  $self->{mixi} = WWW::Mixi->new(<br />
    $self->conf->{username},<br />
    $self->conf->{password},<br />
    -log => 0,<br />
  );</p>
<p>  $self->{mixi}->cookie_jar($cookie_jar);</p>
<p>  unless ($self->{mixi}->login) {<br />
    $context->log(error => &#8220;Login failed.&#8221;);<br />
  } else {<br />
    $context->log(info => &#8220;Login Successed.&#8221;);<br />
  }<br />
}</p>
<p>sub post_diary {<br />
  my($self, $context, $args) = @_;</p>
<p>  my $e = $args->{entry};</p>
<p>  my $title = $e->title;<br />
  my $body  = $e->body_text;<br />
  my @images;</p>
<p>  if ($e->has_enclosure) {<br />
    for my $enclosure (grep { defined $_->url &#038;&#038; $_->is_inline &#038;&#038; ($_->url =~ /.*\.jpg$/) } $e->enclosure) {<br />
      push(@images, $enclosure->local_path);<br />
    }<br />
  }</p>
<p>  my %diary = (<br />
    diary_title => encode(&#8216;euc-jp&#8217;, $title),<br />
    diary_body  => encode(&#8216;euc-jp&#8217;, $body),<br />
    photo1      => shift(@images),<br />
    photo2      => shift(@images),<br />
    photo3      => shift(@images),<br />
  );</p>
<p>  my $sleeping_time = $self->conf->{interval} || 3;<br />
  if ($self->{mixi}->get_add_diary_confirm(%diary)) {<br />
    $context->log(info => &#8220;Making diary succeeded. sleep $sleeping_time.&#8221;);<br />
    sleep( $sleeping_time );<br />
  } else {<br />
    $context->log(error => &#8220;Making diary failed.&#8221;);<br />
  }<br />
}</p>
<p>1:<br />
__END__<br />
[/perl]</p>
<p>YAMLはこんな感じ．</p>
<p>[xml]<br />
global:<br />
  timezone: Asia/Tokyo<br />
  log:<br />
    level: info</p>
<p>plugins:<br />
  &#8211; module: Subscription::Config<br />
    config:<br />
      feed:<br />
        &#8211; url: http://www.sample.com/rss</p>
<p>  &#8211; module: Filter::Rule<br />
    rule:<br />
      module: Deduped<br />
      path: /home/user/plagger/cache_rule/feed2mixidiary.tmp<br />
      compare_body: 1</p>
<p>  &#8211; module: Filter::Reverse</p>
<p>  &#8211; module: Publish::MixiDiary<br />
    config:<br />
      username: username@example.com<br />
      password: password<br />
      interval: 10<br />
[/xml]</p>
<p>激しく更新されるFeedをmixi日記に吐くときは，intervalを入れないとmixiに怒られちゃいますからね．良い子のみんなはそんなFeedをmixiにブチ込んじゃダメだよ．</p>
