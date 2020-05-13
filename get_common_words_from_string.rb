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
