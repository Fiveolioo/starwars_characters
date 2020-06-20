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

    def get_characters_choice
        input = gets.strip.downcase
        return input if input == "exit"
        if input.to_i.between?(1, StarwarsCharacters::Characters.all.length)
            return input.to_i
        else 
            puts "What's that?"
            return "Invalid"
        end
    end

    def main_loop
        loop do
            menu
            input = get_characters_choice
            case input
            when "exit"
                break
            when "invalid"
                next
            else
                puts input
                #display_single_character(input)
            end
        end
        puts "in main loop"
        #binding.pry
    end

    def menu 
        display_characters
        display_instructions
    end

    def display_characters
        characters = StarwarsCharacters::Characters.all
        characters.each.with_index(1) do |sw, index|
            puts "#{index}. #{sw.name}"
        end
    end

    def display_instructions
        puts <<-INST

        Please choose a character by number or type 'exit' to exit the program.

        INST
    end
end