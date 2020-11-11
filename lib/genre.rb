class Genre 
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        Genre.all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select{|x| x.genre == self }
    end

    def artists
        self.songs.map{|x| x.artist}
    end
end 
