class PigLatinizer

    def piglatinize(text)
        words = text.split(' ')
        pig_words = words.collect {|word| 
            if word[0].match(/[AaEeIiOoUu]/)
                word + "way"
            elsif word[0].match(/[^AaEeIiOoUu]/)
                word.split(/(?=[AaEeIiOoUu]+)/,2).reverse.join + "ay"
            else
                word
            end
        }
        pig_words.join(' ')
    end
end