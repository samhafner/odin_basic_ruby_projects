def substrings(text, dictionary)
  text = text.downcase
  results = Hash.new(0)
  dictionary.each do |word|
    matches = text.scan(word.downcase).length
    results[word] = matches unless matches == 0
  end
  results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
