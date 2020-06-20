class StarwarsCharacters::API

    BASE_URL = "https://swapi.dev/api/"
    

    def self.get_characters
      puts "MAKING A NETWORK REQUEST"

      url = BASE_URL + "people"
      res = HTTParty.get(url)
      res 
    end

end