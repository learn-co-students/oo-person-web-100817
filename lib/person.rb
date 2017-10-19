# your code goes here
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

  def happiness=(happy)
    if happy > 10
      self.happiness = 10
    elsif happy < 0
      self.happiness = 0
    else
      @happiness = happy
    end
  end

  def hygiene=(clean)
    if clean > 10
      self.hygiene = 10
    elsif clean < 0
      self.hygiene = 0
    else
      @hygiene = clean
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
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    if self.hygiene > 10
      self.hygiene = 10
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
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

  def start_conversation(person, topic)
    case topic
      when 'politics'
        person.happiness -= 2
        self.happiness -= 2
        'blah blah partisan blah lobbyist'
      when 'weather'
        person.happiness += 1
        self.happiness += 1
        'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
      end

  end

end
