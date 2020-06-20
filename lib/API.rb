class StarwarsCharacters::API

    BASE_URL = "https://swapi.dev/api/"
    

    def self.get_characters
      puts "MAKING A NETWORK REQUEST"

      url = BASE_URL + "people"
      res = HTTParty.get(url)
      swarr = res["results"]
      StarwarsCharacters::Characters.mass_create_from_api(swarr)
    end

end