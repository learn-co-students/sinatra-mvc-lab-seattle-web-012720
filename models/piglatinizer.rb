class PigLatinizer

    def piglatinize(text)
        if text.include?(' ')
            array_of_words = text.split(' ')
            latinized_array = array_of_words.map do |word|
                if word.match(/^[aeiouAEIOU]/)
                    word += 'way'
                else
                    until word.match(/^[aeiouAEIOU]/) do
                        word += "#{word[0]}"
                        word[0] = ''
                    end
                    word += 'ay'
                end
            end
            result = latinized_array.join(' ')
        else
            if text.match(/^[aeiouAEIOU]/)
                text += 'way'
                result = text
            else
                until text.match(/^[aeiouAEIOU]/) do
                    text += "#{text[0]}"
                    text[0] = ''
                end
            text += 'ay'
            result = text
            end
        end
        result
    end
end