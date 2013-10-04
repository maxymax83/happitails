require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require 'pry'

def menu
  puts "Welcome to the HappiShelter, please choose from the following options:
    1 : View a list of our animals
    2 : View a list of our clients
    3 : Add an animal to the shelter
    4 : Become a potential animal parent
    5 : Adopt an animal
    6 : Add an animal to our shelter ready for adoption  "
  menu_response = gets.chomp
end

$animal_array = []
$clients_hash = {}

def view_animals
  puts animal_array
end

def view_clients
  puts client_array
end

def add_animal
  new_animal = Animal.new
  $animal_array << new_animal
end

def add_client(client_hash)
  new_client = Client.new
  $client_hash[client.name] = new_client
end

def adopt_animal
  puts "are you already a client? (Y/N)"
  already_client = gets.chomp.downcase
    if already_client == 'y'
      puts "Here is our list of clients, which one are you?"
      puts client_hash
      @adopting_client = gets.chomp.downcase
    else
        add_client
    end
  def pet_choice
    puts animal_array
    puts "Please select from the choices above"
    @pet_to_adopt = gets.chomp.downcase
  end
end

def adoption
  animal_array.delete(@pet_to_adopt)
  @adopting_client.pets << @pet_to_adopt
end

def add_adoptee
  new_animal = Animal.new
  animal_array << new_animal
end


case menu_response
  when 1
    view_animals
  when 2
    view_clients
  when 3
    add_animal()
  when 4
    add_client
  when 5
    adopt_animal
  when 6
    add_adoptee
end




binding.pry
