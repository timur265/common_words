#!/usr/bin/env ruby

file = File.open(ARGV[0])
content = file.read
file.close
h = {}
content.split.each {
    |word|
    if h.has_key?(word)
        h[word] += 1
    else
        h[word] = 1
    end
}
