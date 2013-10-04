class Client
  attr_accessor :name, :num_children, :age, :num_pets

  def initialize
    puts "Firstly, please tell me your name"
    @name = gets.chomp.capitalize
    puts "Thanks #{name}! Do you have any children? If so, how many?"
    @num_children.to_i
    puts "And how old are you #{name}?"
    @age = gets.chomp.to_i
    puts "So young! Do you already have any pets? If so, how many?"
    @num_pets = gets.chomp.to_i
  end

end


A client should have a name.
A client should have a number of children.
A client should have an age.
A client should have a number of pets.