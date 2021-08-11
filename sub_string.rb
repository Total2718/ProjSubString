#this program will take in an array of strings and a singular string and check 
#if any of the strings in the array are in the given string
#if any are in the given string, they will be recorded along with the number
#of occurences in a hash



def substring(sub_string, word_list)
    results = Hash.new(0)
    word_list.each do |word|
        test_string = sub_string.clone
        
        
        if test_string.include?(word)
            #current index tracks where the word in the dictionary has been checked
            current_index = 0
            #while an index is returned using index, the loop still runs
            while test_string.index(word, current_index) != nil
                results[word] += 1
                #current index is updated by looking for the next occurrence
                #of the word starting at the last time it was found + the length 
                #of the word
                current_index = test_string.index(word, current_index) + word.length
                

            end
        end

    end
    puts results
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("below below bye bit leg glow bob partition howdy", dictionary) 