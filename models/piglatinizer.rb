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
    end
  end

  def piglatinize_word(word) #word
    if word[0] == "a" || word[0] == "e" || word[0] == "o" || word[0] == "u" || word[0] == "i"
      word[0] = ""
      word << "way"
    elsif word.start_with?("b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z") #if it starts with one consonant, do this.
      word[0] = ""
      word << "#{word[0]}ay"
    elsif word[0] != "a" && word[0] != "e" && word[0] != "o" && word[0] != "u" && word[0] != "i" && word[1] != "a" && word[1] != "e" && word[1] != "o" && word[1] != "u" && word[1] != "i"
      word[0, 2] = ""
      word << "#{word[0, 2]}ay"
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
