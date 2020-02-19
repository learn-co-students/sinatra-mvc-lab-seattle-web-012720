class PigLatinizer
    def piglatinize(text)
        word_array = text.split
        word_array.map do |word|
            piglatinize_word(word)
        end.join(' ')
    end

    def piglatinize_word(word)
        if word.match(/^[aeiou]/i) #if the first letter is a vowel
            new_word = word + "way"
        else
            array = word.chars
            # while the first character is not a vowel, 
            # remove it from the front and add it to the end
            while array[0].match(/[aeiou]/i).nil? do
                char = array.shift
                array << char
            end
            new_word = array.join + "ay"
        end
        new_word
    end
end
