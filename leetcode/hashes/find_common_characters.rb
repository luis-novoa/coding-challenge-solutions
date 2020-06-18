def common_chars(a)
  alphabet = Hash.new
  a.each do |word|
    word.split('').each do |letter|
        if alphabet[letter].nil?
          alphabet[letter] = 1
        else
            alphabet[letter] += 1
        end
    end
  end
  output = []
  alphabet.each do |k, v|
      next unless v >= a.length #(v%a.length).zero?
      
      output.fill(k, output.size, (v/a.size))
  end
  output
end

# check each letter of word
# use hash table to store how many times each word shows up
# divide each letter occurence by the number of words in the array
# include in the output the ones with 0 remainder
# repeat them according to the division