class StarwarsCharacters::Characters 

    @@all = []

    def self.all
        @@all
    end

    def self.mass_create_from_api(swarr)
       swarr.each do |swhash|
         self.new(swhash["name"], swhash["url"])
       end
    end

    attr_accessor :name, :url

    def initialize(name, url)
        @name, @url = name, url
        save 
    end

    def save
        @@all << self 
    end
end