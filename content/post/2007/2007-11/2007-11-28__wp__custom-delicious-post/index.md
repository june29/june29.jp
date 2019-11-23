+++
title = "del.icio.usのポストページを俺仕様にするユーザスクリプト"
date = "2007-11-28T15:56:07+09:00"
slug = "custom-delicious-post"
draft = false

+++

<p>del.icio.usのポストページの構成が自分に合わない！と急に思うようになったので作った．「tags」の入力欄と「notes」の入力欄を入れ替えて，まずtagsにフォーカスするようにした．それだけ．</p>
<p>ボクはまずタグを入力して，次にコメントを入れて，そしてポストするので，これでストレスが減ると思う！</p>
<p><a href="http://libelabo.jp/greasemonkey/customdeliciouspost.user.js">Custom del.icio.us post </a> ( for Greasemonkey )</p>
<pre>
// ==UserScript==
// @name           Custom del.icio.us post
// @namespace      http://june29.jp/
// @include        http://del.icio.us/*?*url=*
// ==/UserScript==

(function() {
    tbody = $x('//tbody', document)[0]
    notes = $x('//tbody/tr[3]', document)[0]
    tags  = $x('//tbody/tr[4]//input', document)[0]
    save  = $x('//tbody/tr[6]', document)[0]

    tbody.removeChild(notes)
    tbody.insertBefore(notes, save)

    tags.focus()

    // thanks to cho45 (http://lowreal.net/)
    function $x(exp, context) {
        if (!context) context = document;
        var resolver = function (prefix) {
            var o = document.createNSResolver(context)(prefix);
            return o ? o : (document.contentType == "text/html") ? "" : "http://www.w3.org/1999/xhtml";
        }
        var exp = document.createExpression(exp, resolver);
        var result = exp.evaluate(context, XPathResult.ANY_TYPE, null);
        switch (result.resultType) {
            case XPathResult.STRING_TYPE : return result.stringValue;
            case XPathResult.NUMBER_TYPE : return result.numberValue;
            case XPathResult.BOOLEAN_TYPE: return result.booleanValue;
            case XPathResult.UNORDERED_NODE_ITERATOR_TYPE: {
                result = exp.evaluate(context, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);
                var ret = [];
                for (var i = 0, len = result.snapshotLength; i < len ; i++) {
                    ret.push(result.snapshotItem(i));
                }
                return len != 0 ? ret : null;
            }
        }
        return null;
    }

}());
</pre>
