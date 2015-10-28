def pig_latin(word)
	
	if word.downcase.start_with? "a", "e", "i", "o", "u"
		vowel = word.slice!(0)
		"#{word}#{vowel}way"
	else
		con = []
		vocales = "aeiou"
		word.split("").each do |letter|
			if vocales.include? letter
				break
			else
				con.push(letter)
			end  
		end
			num_con = con.count 
		"#{word.slice(num_con..-1)}#{con.join}ay"
	end	

end

ARGV.each do |word|
	new_word = word.dup
	print pig_latin(new_word) + " "
end

print "\n"