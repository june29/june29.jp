require "date"
require "fileutils"

slug = ARGV[0]
time = Time.now
date = time.to_date

content_dir = "content/post/#{date.strftime("%Y/%Y-%m/%Y-%m-%d")}__hg__#{slug}"
file_path = "#{content_dir}/index.md"

metadata = <<~METADATA
  +++
  date = "#{date}T#{time.hour}:00:00+09:00"
  title = ""
  description = ""
  slug = "#{slug}"
  og_image = "#{date.strftime("%Y/%m/%d")}/#{slug}/thumbnail.jpg"
  draft = false
  +++

  <img src="thumbnail.jpg">
METADATA

FileUtils.mkdir_p(content_dir) unless Dir.exist?(content_dir)
File.write(file_path, metadata)

puts "Created #{file_path}"
