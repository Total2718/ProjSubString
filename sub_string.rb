#this program will take in an array of strings and a singular string and check 
#if any of the strings in the array are in the given string
#if any are in the given string, they will be recorded along with the number
#of occurences in a hash



def substring(sub_string, word_list)
    results = Hash.new(0)
    word_list.each do |word|
        test_string = sub_string
        if substring.include?(word)
            while sub_string.include?(word)
                results[word] += 1
                

            end
        end

    end
end