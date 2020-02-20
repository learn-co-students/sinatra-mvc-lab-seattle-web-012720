require 'pry'
class PigLatinizer
    attr_accessor :text

    # def initialize(text="")
    #     binding.pry
    #     @text = text
    # end

    def piglatinize(text)
        # binding.pry
        array = text.split(' ')
        # binding.pry
        pig_array = array.map do |word|
           if word.scan(/^[aeiouAEIOU]/)[0] != nil
                word = word + "way"
           else
                beginning = word.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]*/)[0]
                word = word[beginning.length, word.length] + beginning + "ay"
           end
            # after_start = word.scan(/[^bcdfghjklmnpqrstvwxyz]/)
        end
            #     word = word + first_letter
        #     word = word[1,word.length - 1]
        #     word = word + "ay"
        # end
        pig_array.join(' ')
    end

    # def self.piglatinize
    # end

end

# binding.pry