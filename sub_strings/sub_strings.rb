def substrings(word, dictionary)
    word = word.downcase
    results = Hash.new(0)
    dictionary.each do |string|
        string = string.downcase
        if word.include?(string)
            results[string] += 1
        end
    end
    results
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)