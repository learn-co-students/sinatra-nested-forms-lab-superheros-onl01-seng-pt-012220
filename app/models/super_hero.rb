class SuperHero 
  attr_reader :name, :biography, :power 
  
  @@all = []
  
  def initialize(params)
    @name = params[:name]
    @biography = params[:biography]
    @power = params[:power]
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 