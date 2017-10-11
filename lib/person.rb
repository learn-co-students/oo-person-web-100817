# your code goes here
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(scale)
    if scale > 10
      @happiness = 10
    elsif scale < 0
      @happiness = 0
    else @happiness = scale
    end
    
  end
  def hygiene=(scale)
    
    if scale > 10
      @hygiene = 10
    elsif scale < 0
      @hygiene = 0
    else @hygiene = scale
    end
  end

  def happy?
    if @happiness > 7
      true
    else false
    end
  end
  
  def clean?
    if @hygiene > 7
      true
    else false
    end
  end

  def get_paid(loot)
    @bank_account += loot
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = 4 + @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
  
    if topic == "politics"
      self.happiness = @happiness - 2
      friend.happiness = friend.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      "blah blah sun blah rain"
    else "blah blah blah blah blah"
    end
  end

end
