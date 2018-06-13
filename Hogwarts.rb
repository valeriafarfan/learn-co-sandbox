class Hogwarts_characters
  def initialize(name, house)
    @name = name 
    @house = house 
  end 
  
  def name 
    @name 
  end 
  
  def house
    @house 
  end 
end 

class Quiz
  
  @@characters = []
  
  def self.add_character(character)
    @@characters << character 
  end
  
  def self.quiz_character(character)
    puts "What's #{character.name}'s house"
    answer = gets.chomp.downcase
    if answer == character.house
      puts "That's correct!"
      puts ""
    else 
      puts "That's incorrect, the correct answer is #{character.house}."
      puts ""
    end 
  end

  def self.start_quiz 
    puts "Welcome to the mystical,wonderous world of Hogwarts,in this enchanted world,you will be taking a quiz testing your knowledge of Hogwarts houses and the characters in them,are you ready?"
    puts ""
    @@characters.each do|character|
      self.quiz_character(character)
    end 
    puts "Quiz Over!"
  end
end

# characters = [""]
# houses = ["ravenclaw", "hufflepuff", "ravenclaw"]
Quiz.add_character(Hogwarts_characters.new("Luna LoveGood", "ravenclaw"))
Quiz.add_character(Hogwarts_characters.new("Cedric Diggory", "hufflepuff"))
Quiz.add_character(Hogwarts_characters.new("Gregory Goyle", "slytherin"))
Quiz.add_character(Hogwarts_characters.new("Moaning Myrtle", "ravenclaw"))
Quiz.add_character(Hogwarts_characters.new("Harry Potter", "gryffindor"))
Quiz.add_character(Hogwarts_characters.new("Regulus Black", "slytherin"))
Quiz.add_character(Hogwarts_characters.new("Sirius Black", "gryffindor"))
Quiz.add_character(Hogwarts_characters.new("Cho Chang", "ravenclaw"))
Quiz.add_character(Hogwarts_characters.new("Tom Riddle", "slytherin"))
Quiz.add_character(Hogwarts_characters.new("Newt Scamander", "hufflepuff"))
Quiz.add_character(Hogwarts_characters.new("Dumbledore", "gryffindor"))
Quiz.add_character(Hogwarts_characters.new("CTonks", "hufflepuff"))
Quiz.add_character(Hogwarts_characters.new("Umbridge", "slytherin"))
Quiz.add_character(Hogwarts_characters.new("Blaise Zabini", "slytherin"))
Quiz.add_character(Hogwarts_characters.new("Hagrid", "gryffindor"))
Quiz.add_character(Hogwarts_characters.new("Parvati Patil", "gryffindor"))
Quiz.add_character(Hogwarts_characters.new("Padma Patil", "ravenclaw"))

Quiz.start_quiz