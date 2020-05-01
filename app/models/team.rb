class Team
    attr_accessor :name, :motto
    @@all = []

    def initialize(name, motto)
        @name = params[:team][:name]
        @motto = params[:team][:motto]
        @@all << self
    end

    def self.all
        @@all
    end
end