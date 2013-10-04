
class Shelter
  attr_accessor :animals, :clients

  def initialize
    @animals = []
    @clients = []
  end

  def add_animal(animal)
    @animals << animal
  end

  def add_client(client)
    @clients << client
  end

end

binding.pry