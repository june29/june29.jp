require 'date'
require 'fileutils'

slug = ARGV[0]
time = Time.now
date = time.to_date

file_path = "content/post/#{date}__hg__#{slug}.md"
image_dir = "post/#{date.strftime('%Y/%m/%d')}"
image_path = "#{image_dir}/#{slug}.jpg"

metadata = <<~METADATA
  +++
  date = "#{date}T#{time.hour}:00:00+09:00"
  title = ""
  description = ""
  slug = "#{slug}"
  og_image = "#{image_path}"
  draft = false
  +++

  <img src="/#{image_path}">
METADATA

File.write(file_path, metadata)
FileUtils.mkdir_p(image_dir) unless Dir.exist?(image_dir)
