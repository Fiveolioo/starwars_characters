class StarwarsCharacters::Characters 
    
    
    attr_accessor :name, :url, :height, :gender, :hair_color, :skin_color, :eye_color, :birth_year
    
    @@all = []

    def initialize(name, url)
        @name, @url = name, url
        save 
    end

    def self.create(swarr)
       swarr.each do |swhash|
         self.new(swhash["name"], swhash["url"])
       end
    end

    def self.all
        @@all
    end

    def save
        @@all << self 
    end

    def details
        <<-DESC
        ~~~~~~~~~~~~~~~~~~~~~~~~~
        Name: #{self.name}
        Height: #{self.height}
        Gender: #{self.gender}
        Hair Color: #{self.hair_color}
        Skin Color: #{self.skin_color}
        Eye Color: #{self.eye_color}
        Birth Year: #{self.birth_year}
        ~~~~~~~~~~~~~~~~~~~~~~~~~

        DESC
    end
end