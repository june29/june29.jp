$(function() {
  if ($("#other-entries").length > 0) {
    var already = $("#other-entries li a").map(function(_i, a) {
      return $(a).attr("href").replace(/\/$/, "");
    });

    $.getJSON("/entries.json", function(entries) {
      var sampled = _.reject(_.sample(entries, 12), function(entry) {
        return _.contains(already, entry.link);
      });

      $.each(sampled, function(_i, entry) {
        $("<li/>").append(
          $("<a/>").attr("href", entry.link).text(entry.date + " : " + entry.title)
        ).appendTo($("#other-entries ul"));
      });
    });
  }
});
