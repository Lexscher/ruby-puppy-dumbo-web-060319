require "pry"

class Dog
    # make a class variable to hold all instances of "Dog"
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        # binding.pry
        @@all << self
    end

    def self.clear_all
        @@all = []
    end

    def self.all
        names = []
        @@all.each { |dog_instance| names << dog_instance.name }
        names.each { |name| puts name}
    end

    def new

    end

end


rover = Dog.new("spot")

Dog.all