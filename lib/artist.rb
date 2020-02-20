class Artist 
  attr_accessor :name, :songs 
  
@@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end 

    
    def add_song(name)
     song.artist = self 
    end
    
    def songs 
      Song.all.find_all do |song| 
        song.artist == self
      end 
    end 

    def self.all 
      @@all 
    end 
    
    def self.find_or_create_by_name(name)
       self.find_by_name(name) || self.create_by_name(name)
    end 
    
    def self.create(name)
    new_artist = Artist.new(name)
    new_artist
    end
    
    def self.find(name)
      @@all.find {|artsist| artist.name == name} 
    end 
    
    def print_songs()
    song.each {|song| puts song}
    end 
    
  end 