class PigLatinizer

    def piglatinize(text)
        words = text.split(" ")
        output = []
        words.map do |word|
            if word[0].scan(/[aeiou]/i) != []
                word = word.concat("way")
                output << word
            else
                word.chars.map do |char|
                    if char.scan(/[aeiou]/i) != []
                        word = word.concat("ay")
                        output << word
                        break
                    else
                        first_letter = char
                        word = word[1..-1]
                        word = word.concat(first_letter)
                    end
                end
            end
        end
        output.join(" ")
    end
end