class Person

  attr_accessor :bank_account
  attr_reader :name
  attr_writer :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
     @happiness >= 10 ? 10 : @happiness < 0 ? 0 : @happiness
  end

  def hygiene
     @hygiene > 10 ? 10 : @hygiene < 0 ? 0 : @hygiene
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend_name)
    self.happiness += 3
    friend_name.happiness += 3
    "Hi #{friend_name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person_to_talk_to, topic)
    if topic == "politics"
      self.happiness -= 2
      person_to_talk_to.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person_to_talk_to.happiness += 1
      "blah blah sun blah rain"
    elsif topic == "programming"
      "blah blah blah blah blah"
    end
  end

end
