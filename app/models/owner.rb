class Owner

	def name
		name = "Akash Joseph"
	end

	def birthdate
		birthdate = Date.new(1979, 12, 26)
	end

	def countdown
		today = Date.today
		
		birthday = Date.new(today.year, birthdate.month, birthdate.day)
		
		if birthday >= today
=begin
This year's birthday has not yet come
=end
			countdown = (birthday - today).to_i
		else
=begin
This year's birthday has passed
=end
			nextBirthday = Date.new(today.year + 1, birthdate.month, birthdate.day)
			countdown = (nextBirthday - today).to_i
		end
	end
end
