require 'fileutils'
require 'nokogiri'
require 'open-uri'

url = 'http://june29.hatenablog.jp/'
doc = Nokogiri::HTML(open(url).read)

first_article = doc.css('article.entry').first
article_link = first_article.css('a.entry-title-link')

while article_link.count > 0
  url = article_link.attribute('href').value

  doc = Nokogiri::HTML(open(url).read)

  title        = doc.css('.entry-title').text.strip
  posted_at    = Time.parse(doc.css('.entry-date time').attribute('datetime').value).getlocal
  images       = doc.css('img.hatena-fotolife')
  content      = doc.css('.entry-content').inner_html.strip
  og_image_url = doc.css('meta[property="og:image"]').first&.attribute('content')&.value
  entry_slug   = url.scan(%r|/entry/(.+)$|)[0][0]
  entry_slug   = entry_slug.split('/').last if entry_slug.include?('/')

  puts [url, title, entry_slug, posted_at].join("\n")
  puts

  content_dir_path = posted_at.strftime('content/post')

  static_dir_path = posted_at.strftime('static/post/%Y/%m/%d')
  FileUtils.mkdir_p(static_dir_path) unless Dir.exist?(static_dir_path)

  if og_image_url
    if og_image_url =~ /hatena/
      og_image_ext = og_image_ext = og_image_url.scan(/\.([^.]+)$/)[0][0]
      og_image_path = "#{static_dir_path}/#{entry_slug}-og-image.#{og_image_ext}"

      open(og_image_url) do |from|
        open(og_image_path, 'w+b') do |to|
          to.write(from.read)
        end
      end
    else
      og_image_path = og_image_url
    end
  end

  images.each do |image|
    image_src = image.attribute('src').value
    image_filename = image_src.scan(%r|/([^/]+)$|)[0][0]
    image_path = "#{static_dir_path}/#{entry_slug}-#{image_filename}"

    open(image_src) do |from|
      open(image_path, 'w+b') do |to|
        to.write(from.read)
      end
    end

    content.gsub!(image_src, image_path.sub('static/', '/'))
  end

  hugo_article_content = [
    '+++',
    "title = \"#{title}\"",
    "date = \"#{posted_at.strftime('%Y-%m-%dT%H:%M:%S%:z')}\"",
    "slug = \"#{entry_slug}\"",
    "draft = false",
    "og_image = \"#{og_image_path}\"".sub('static/', ''),
    "original_url = \"#{url}\"",
    '',
    '+++',
    '',
    content
  ].join("\n")

  file_path = "#{content_dir_path}/#{posted_at.strftime('%Y-%m-%d')}__#{entry_slug}.html.md"
  File.write(file_path, hugo_article_content)

  article_link = doc.css('.pager-next a')

  sleep 3
end
