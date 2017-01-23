require 'fileutils'
require 'open-uri'
require 'http'
require 'pry'

base_url = 'http://june29.jp'
page = 1

loop do
  url = "#{base_url}/wp-json/wp/v2/posts?page=#{page}"
  posts = JSON.parse(HTTP.get(url))

  break if posts.empty?

  puts
  puts url
  puts

  posts.each do |post|
    title      = post['title']['rendered']
    url        = post['link']
    content    = post['content']['rendered']
    posted_at  = Time.parse(post['date'])
    entry_slug = url.match(%r[june29\.jp/\d{4}/\d{2}/\d{2}/([^/]+)/]).captures.first

    p [posted_at, title, url, entry_slug]

    content_dir_path = posted_at.strftime('content/post')

    hugo_article_content = [
      '+++',
      "title = \"#{title}\"",
      "date = \"#{posted_at.strftime('%Y-%m-%dT%H:%M:%S%:z')}\"",
      "slug = \"#{entry_slug}\"",
      "draft = false",
      '',
      '+++',
      '',
      content
    ].join("\n")

    file_path = "#{content_dir_path}/#{posted_at.strftime('%Y-%m-%d')}__wp__#{entry_slug}.html.md"
    File.write(file_path, hugo_article_content)
  end

  page += 1
end
