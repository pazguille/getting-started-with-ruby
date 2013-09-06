# Struct
Struct.new("Pazguille", :name, :location)
pazguille = Struct::Pazguille.new
pazguille.name = " Guille Paz"
pazguille.location = "ARG"
puts.pazguille.inspect


Pazguille = Struct.new(:name, :location)
pazguille = Pazguille.new("Guille Paz", "ARG")
puts.pazguille.inspect


Pazguille = Struct.new(:name, :location) do
  def to_s
    "<#{name}, #{location}>"
  end

  def travel
    puts "Going to #{location} location..."
  end
end
pazguille = Pazguille.new("Guille Paz", "ARG")
pazguille.travel