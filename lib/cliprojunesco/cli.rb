class Cliprojunesco::CLI
    def call
        Cliprojunesco::Scraper.scrape_sites
        welcome
        display_sites
        menu
        goodbye
    end
      
    def welcome
        puts ""
        puts "----------------------------------------"
        puts "        US UNESCO SITES TO VISIT!      "
        puts "----------------------------------------"
    end
      
    def display_sites
        Site.all.each.with_index(1) do |site, i|
          puts "#{i}.   #{site.name}"
        end
    end
      
    def display_info
        Site.all.each.with_index(1) do |site, i|
        end
    end
    

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the UNESCO site you want to learn about, type list to see list, or exit:"
            input = gets.strip.downcase
            if input.to_i > 0 && input.to_i < 25
                the_site = display_info[input.to_i-1]
                puts "#{the_site.name} - #{the_site.info}"
            elsif input == "list"
                display_sites
            elsif input != "exit"
                puts "I'm sorry, I don't quite understand..."
            else
                puts "888                                  888" 
                puts "888                                  888" 
                puts "888                                  888" 
                puts "888888888d888 8888b. 888  888 .d88b. 888" 
                puts "888   888P"      "88b888  888d8P  Y8b888" 
                puts "888   888    .d888888Y88  88P88888888888" 
                puts "Y88b. 888    888  888 Y8bd8P Y8b.    888" 
                puts " Y888888     Y888888  Y88P    Y8888 888" 
                puts "Thanks for coming! I hope you enjoy your trip!"
                exit
            end 
        end
    end
end 