require 'pry'
require 'json'

result = []
entry_file_paths = Dir['content/post/*.md']

entry_file_paths.each do |path|
  entry_data = {}

  File.read(path).split("\n").each do |line|
    %i(title slug date).each do |item|
      if line =~ Regexp.compile("^#{item} = \"(.+)\"$")
        entry_data[item] = $1
      end
    end
  end

  result << entry_data if entry_data.size == 3
end

File.write('static/entries.json', JSON.dump(result))

puts "Generated static/entries.json with #{result.size} entries"
