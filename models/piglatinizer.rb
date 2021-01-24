class PigLatinizer
    def piglatinize(text)
        words = text.split(" ").map do |word|
            pl_word(word)
        end
        words.join(" ")
    end

    def pl_word(word)
        vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
        letters_before_vowel = ""
        if vowels.include?(word[0])
            word = word + "w"
        else  
            while !vowels.include?(word[0])
                letters_before_vowel += word.slice!(0,1)
            end
        end
        word + letters_before_vowel + "ay"
    end
end
