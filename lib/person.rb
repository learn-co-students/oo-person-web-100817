require 'pry'
class Person

	attr_accessor :bank_account, :happiness, :hygiene
	attr_reader :name

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(num)
		if num  > 10
			@happiness = 10
		elsif num < 0
			@happiness = 0
		else
			@happiness = num
		end
	end

	def hygiene=(num)
		if num  > 10
			num = 10
		elsif num < 0
			num = 0
		end
		@hygiene = num
	end

	def happy?
		@happiness > 7 ? true : false
	end

	def clean?
		@hygiene > 7? true : false
	end

	def get_paid(salary)
		@bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		cleanliness = @hygiene
		self.cleaner(4)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end


	def work_out
		self.hygiene=(@hygiene - 3)
		self.happier(2)
		"♪ another one bites the dust ♫"
	end

	def call_friend(object)
		self.happier(3)
		you = object.happiness + 3
		object.happiness=(you)
		"Hi #{object.name}! It's #{self.name}. How are you?"
	end

	def happier(num)
		self.happiness=(@happiness+num)
	end

	def cleaner(num)
		self.hygiene=(@hygiene+num)
	end

	def start_conversation(person, topic)
		if topic == "politics"
			ph = person.happiness
			h = self.happiness
			person.happiness=(ph - 2)
			self.happiness=(h - 2)
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			ph = person.happiness
			h = self.happiness
			person.happiness=(ph + 1)
			self.happiness=(h + 1)
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end



end
