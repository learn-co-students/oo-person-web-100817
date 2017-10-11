# your code goes here
require 'pry'
class Person
  attr_reader :name
  attr_writer
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, amount = 25, index = 8, index2=8)
    @name = name
    @bank_account = amount
    @happiness = index
    @hygiene = index2
  end

def happiness=(index)
  if index < 0
    @happiness = 0
  elsif index> 10
    @happiness = 10
  else
    @happiness = index
  end
end

def hygiene=(index2)
  if index2 < 0
    @hygiene = 0
  elsif index2> 10
    @hygiene = 10
  else
    @hygiene = index2
  end
end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

    def clean?
      if @hygiene > 7
        return true
      else
        return false
      end
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
      self.happiness +=2
      return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      friend.happiness += 3
      self.happiness +=3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
      case topic
        when 'politics'
          self.happiness -= 2
          friend.happiness -=2
          'blah blah partisan blah lobbyist'
        when 'weather'
          self.happiness += 1
          friend.happiness += 1
          'blah blah sun blah rain'
        else 
          'blah blah blah blah blah'
      end

    end




end

  # def happiness
  #   if @happiness < 0
  #     @happiness = 0
  #   elsif @happiness > 10
  #     @happiness = 10
  #   end
  # end
