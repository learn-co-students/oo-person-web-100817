class Person
	attr_accessor :bank_account
	attr_reader :name, :happiness, :hygiene

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(num)
		if num > 10
			@happiness = 10
		elsif num < 0
			@happiness = 0
		else
			@happiness = num
		end
	end

	def hygiene=(num)
		if num > 10
			@hygiene = 10
		elsif num < 0
			@hygiene = 0
		else
			@hygiene = num
		end
	end

	def happy?
		if @happiness > 7
			true
		else
			false
		end
	end

	def clean?
		if @hygiene > 7
			true
		else
			false
		end
	end

	def get_paid(salary)
		@bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		cleanliness = @hygiene
		cleanliness += 4
		self.hygiene=(cleanliness)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		cleanliness = @hygiene
		cleanliness -= 3
		self.hygiene=(cleanliness)

		happy = @happiness
		happy += 2
		self.happiness=(happy)
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		happy = @happiness
		happy += 3
		self.happiness=(happy)

		friends_happiness = friend.happiness
		friends_happiness += 3
		friend.happiness = friends_happiness
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			ph = person.happiness
			h = self.happiness
			person.happiness = ph - 2
			self.happiness = h - 2
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			ph = person.happiness
			h = self.happiness
			person.happiness = ph + 1
			self.happiness = h + 1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end
end
