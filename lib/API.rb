class StarwarsCharacters::API

    BASE_URL = "https://swapi.dev/api/"
    

    def self.get_characters
        puts "STAR WARS\n\n"
        url = BASE_URL + "people"
        res = HTTParty.get(url)
        swarr = res["results"]
        StarwarsCharacters::Characters.create(swarr)
    end

    def self.get_character_details(character)
        puts "\nCharacters Description:\n\n"

        url = character.url
        res = HTTParty.get(url)
        character.height = res["height"]
        character.gender = res["gender"]
        character.hair_color = res["hair_color"]
        character.skin_color = res["skin_color"]
        character.eye_color = res ["eye_color"]
        character.birth_year = res["birth_year"]

    end

end