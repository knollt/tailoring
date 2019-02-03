class Tailoring::CLI  

  def call 
    Tailoring::Scraper.new.suit_brands
    puts "Welcome suit connoiseur! Lets learn more about the top suit brands."
   
    start 
  end   
  
  def start
    puts ""
    puts "Here are the best 40 men suit brands."
    
    
      # lists suit brands
    
    puts ""
    puts "What number would you like to learn more about? Please enter a number 1-40."
    puts ""
    
    input = gets.strip.to_i
    
    
    
    # scrape list of brands
  
    # url = "https://www.thetrendspotter.net/best-suit-brands-men/"
    
    lists = Tailoring::Scraper.suit_brands
    puts lists
    

    # url = "https://www.thetrendspotter.net/best-suit-brands-men/"
      

      
       case input
          when "0"
            puts "exit"
          when "1"
            puts "Burberry"
            shopUrl = Tailoring::Shop.scrape_links(url) 
          when "2"  
            puts "Dolce & Gabbana"
          when "3"
            puts "Gucci"
          when "4"
            puts "Brioni"
          when "5"
            puts "Saint Laurent"
          else 
            puts "invalid"
          end   

       
      # create validation method to pull brand number
    end   
  
  
  
  
  # brand = Tailoring::Brands.find(input.to_i)
  
    def exit 
      puts "Would you like to see another brand? Enter Y or N"
      inputted = gets.strip.downcase
      if inputted == "Y"
        brand_list
      elsif inputted == "N"
        puts "Thank you! Have a nice day."
        exit instance method
      else 
        puts "I don't understand that answer."
        start
      end   
    end
    
end 