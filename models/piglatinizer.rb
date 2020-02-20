class PigLatinizer
    attr_accessor :text

    def piglatinize(text)
        array = text.split(' ')
        pig_array = array.map do |word|
           if word.scan(/^[aeiouAEIOU]/)[0] != nil
                word = word + "way"
           else
                beginning = word.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]*/)[0]
                word = word[beginning.length, word.length] + beginning + "ay"
           end

        end

        pig_array.join(' ')
    end


end
