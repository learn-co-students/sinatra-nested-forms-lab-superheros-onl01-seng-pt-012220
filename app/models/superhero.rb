class Superhero
    attr_reader :name, :power, :bio

    @@superheroes = []

    def initialize(arguments)
        @name = arguments[:name]
        @power = arguments[:power]
        @biography = arguments[:biography]
        @@superheroes << self
    end

    def self.all
        @@superheroes
    end
end
