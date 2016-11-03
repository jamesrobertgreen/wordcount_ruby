

H = Hash[]

input_file = File.open('file.txt', 'r')
highest_word_count = 0
total = 0
most_common_word = ""

# read each word
input_file.read.scan(/[\w']+/) do |word|
    word = word.upcase
    if H.key?(word) == true
         # exists already - get the current value, add 1, store it back in the hash
        total = H[word] + 1
        H[word] = total
    else
        # new word - add it to the hash with a value of 1
        H[word] = 1
    end

    if total > highest_word_count
        most_common_word = word.dup
        highest_word_count = total
    end
end

puts("Most common word = #{most_common_word} with #{highest_word_count} occurences")
# add prompt for filename
# output top 10 most common and remove manual check for highest count
# add timing information