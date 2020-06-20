class StarwarsCharacters::CLI

    def call 
        introduction
        get_character_info
        main_loop
    end

    def introduction
        puts "\n\n\n\n"
        puts "A long time ago in a galaxy far, far away..."
        sleep(2)
        puts "\n\n\n\n"
    end

    def get_character_info
        StarwarsCharacters::API.get_characters
    end

    def main_loop
        loop do
            menu
        end
        puts "in main loop"
        #binding.pry
    end

    def menu 
        display_characters
        #display_instructions
        binding.pry
    end

    def display_characters
        characters = StarwarsCharacters::Characters.all
        characters.each.with_index(1) do |sw, index|
            puts "#{index}. #{sw.name}"
        end
    end
end