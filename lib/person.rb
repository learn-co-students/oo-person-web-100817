# your code goes here

class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def happiness=(new_happiness)
    if new_happiness >= 10
      @happiness = 10
    elsif new_happiness <= 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene >= 10
      @hygiene = 10
    elsif new_hygiene <= 0
      @hygiene = 0
    else
      @hygiene = new_hygiene
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end












end
