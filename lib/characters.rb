class StarwarsCharacters::Characters 
    attr_accessor :name, :url, :height, :gender, :hair_color, :skin_color, :eye_color, :birth_year
    
    @@all = []

    def initialize(name, url)
        @name, @url = name, url
        save 
    end

    def self.all
        @@all
    end

    def self.mass_create_from_api(swarr)
       swarr.each do |swhash|
         self.new(swhash["name"], swhash["url"])
       end
    end

    def save
        @@all << self 
    end
end