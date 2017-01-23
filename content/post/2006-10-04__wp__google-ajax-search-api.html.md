+++
title = "Google AJAX Search API"
date = "2006-10-04T23:02:29+09:00"
slug = "google-ajax-search-api"
draft = false

+++

<p><a href="http://code.google.com/apis/ajaxsearch/" target="_blank">Google AJAX Search API</a>が公開されたので，早速cameraLadyのサイドバーにも組み込んでみました．試しに使ってみてください．サクサク動いて気持ちが良いよ！</p>
<p>現在適用中のテーマに合わせて導入しています．right.phpに以下のコードを追加．結局，APIの利用よりもCSSの編集に時間が掛かる．</p>
<p>[code]</p>
<h1>Ajax Search</h1>
<link href="http://www.google.com/uds/css/gsearch.css" type="text/css" rel="stylesheet"/>
<script src="http://www.google.com/uds/api?file=uds.js&#038;v=1.0&#038;key=myAPIkey" type="text/javascript"></script></p>
<style>
.gsc-control {
  width: 100%;
}</p>
<p>td.gsc-branding-text div.gsc-branding-text {
  color : #ccc;
}</p>
<p>div.gsc-title{
  color: #ccc;
}
div.gs-title {
  color: #F06;
}
.gs-relativePublishedDate {
  color: #06F;
}
.gs-snippet {
  color: #fff;
}</p>
<p>.gs-result .gs-title * {
  color: #F06;
}</p>
<p>.gsc-resultsHeader .gsc-title{
  color: #fff;
}</p>
<p>.gs-result a.gs-visibleUrl, .gs-result .gs-visibleUrl {
  color: #666;
}
</style>
<p><script type="text/javascript">
//< ![CDATA[
function onLoad()
{
    var searchControl = new GSearchControl();

    var blogSearch = new GblogSearch();
    blogSearch.setUserDefinedLabel("cameraLady");
    blogSearch.setSiteRestriction("http://june29.jp/");
    searchControl.setResultSetSize(GSearch.LARGE_RESULTSET);
    searchControl.addSearcher(blogSearch);
    searchControl.draw(document.getElementById("searchcontrol"));
}
registerLoadHandler(onLoad);

function registerLoadHandler(handler)
{
    var node = window;
    if (node.addEventListener) {
        node.addEventListener("load", handler, false);
    } else if (node.attachEvent) {
        node.attachEvent("onload", handler);
    } else {
        node['onload'] = handler;
    }
    return true;
}
//]]>
</script></p>
<div id="searchcontrol"></div>
<p>[/code]</p>
<p>もともとあった検索フォームはコメントアウトしておきました．Google先生にインデックスされていないためか古いエントリの検索が上手くいっていないような気もしますが，しばらくはこのまま設置してみます．</p>
