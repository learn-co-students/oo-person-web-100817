# your code goes hereclass Person
class Person

  attr_accessor :bank_account
  attr_reader :name,:hygiene, :happiness

 def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

 def happiness= (happiness_level)
    if happiness_level <0
      @happiness = 0
    elsif happiness_level > 10
      @happiness = 10
    else
      @happiness = happiness_level
    end
  end

 def hygiene= (hygiene_level)
    if hygiene_level <0
      @hygiene = 0
    elsif hygiene_level> 10
      @hygiene = 10
    else
      @hygiene = hygiene_level
    end
  end

 def happy?
    self.happiness > 7
  end

 def clean?
    self.hygiene > 7
  end

 def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

 def take_bath
  self.hygiene += 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

 def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

 def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

 def start_conversation(friend,topic)
    if topic.downcase == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic.downcase == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
