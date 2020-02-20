class PigLatinizer
    #attr_reader :string
    # def initialize(string)
    #     @string = string
    # end

    def piglatinize(string)
        test = string.split(" ")
        changed_words = test.map{|word| plat_each_word(word)}
        changed_words.join(' ')
    end

    def plat_each_word(word)
        if (word =~ /^[aeiou]/i) == 0
            word + "way"
        else
            test = word.split("")
            dup = test.clone

            letters_to_end = []
            test.map do |letter|  
                if (letter =~ /^[aeiou]/i) == 0
                    break
                else
                    letters_to_end << letter
                    dup.delete_at(0)
                end
            end
            dup.join('') + letters_to_end.join('') + "ay"
        end
    end
end