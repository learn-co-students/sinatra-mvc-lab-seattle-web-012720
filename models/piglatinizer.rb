class PigLatinizer
    def piglatinize(text)
        words = text.split(' ')
        result = words.map do |word|
            if word.match?(/^[^aeuioAEUIO]/)
                word.scan(/^([^aeuioAEUIO]+)(.+)/)[0].reverse.join('') + 'ay'
            else
                word + 'way'
            end
        end

        result.join(' ');
    end

end