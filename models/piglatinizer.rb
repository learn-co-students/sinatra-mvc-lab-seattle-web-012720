class PigLatinizer
  def piglatinize(string) #sentences
    words = string.split(" ")
    if words.count > 1
      piglatinize_sentence(words)
    elsif words.count == 1
      piglatinize_word(words[0])
    end
  end

  def piglatinize_sentence(words)
    words.map do |word|
      piglatinize_word(word)
    end.join(" ")
  end

  def vowel?(letter)
    letter.match(/[aeiouAEIOU]/)
  end

  def piglatinize_word(word) #word
    if vowel?(word[0])
      word << "way"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      first_letter = word[0]
      second_letter = word[1]
      third_letter = word[2]
      word[0] = ""
      word[0] = ""
      word[0] = ""
      word << "#{first_letter + second_letter + third_letter}ay"
    elsif !vowel?(word[0]) && !vowel?(word[1])
      first_letter = word[0]
      second_letter = word[1]
      word[0] = ""
      word[0] = ""
      word << "#{first_letter + second_letter}ay"
    elsif !vowel?(word[0])
      first_letter = word[0]
      word[0] = ""
      word << "#{first_letter}ay"
      #CONSONANTS = (('a'..'z').to_a - 'aeiou'.chars).join
      #=> "bcdfghjklmnpqrstvwxyz"

      #if word[0] not a vowel and word[3] not a vowel, etc.  look into the index method. if find position of first vowel in the word that will tell you that from 0th index to that position they were consonants and then you can slice those.

      #if starts with one consonant, do this
      #if starts with 2 consonants, do this , etc

    end
  end
end

#one method that piglatinizes the sentence
#one method that piglatinizes the word
