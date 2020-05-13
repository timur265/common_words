#!/usr/bin/env ruby

if !ARGV[0]
  puts 'Usage: ./common_words.rb TEXT_FILE_PATH'
  exit 1
end

def get_common_words_from_string(content)
  h = {}
  content.split.each {
    |word|
    if h.has_key?(word)
      h[word] += 1
    else
      h[word] = 1
    end
  }
  return Hash h
end

file = File.open(ARGV[0])
content = file.read
file.close

h = get_common_words_from_string(content)
sorted_hash = h.sort_by { |k, v| v }
sorted_hash.each {
  |k, v|
  if v > 3
    puts "#{k} #{v}"
  end
}
