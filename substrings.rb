def substrings(word, dictionary)
    word = word.downcase
    words_found = {}
    dictionary.each do |valid_word|
        search = valid_word.downcase
        if word.include? search
            words_found[valid_word] = word.scan(search).length
        end
    end
    puts words_found
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)