def substrings(words, dictionary)
  arr_words = words.split
  results = Hash.new(0)
  dictionary.each do |string|
    string = string.downcase
    arr_words.each do |word|
      if word.include?(string)
        results[string] += 1
      end
    end
  end
  results
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
