class Tailoring::CLI  

  def start # instance method
    puts "Welcome suit connoiseur! Lets learn more about the top suit brands."
    puts "Here are the best 40 men suit brands."
    # scrape list of brands
    # lists suit brands
    url = "https://www.thetrendspotter.net/best-suit-brands-men/"
    lists = Tailoring::Scraper.scrape_brands(url)
    puts lists
    
    brand_list
  end
  
  def brand_list
    url = "https://www.thetrendspotter.net/best-suit-brands-men/"
    # Tailoring::Brands.all.each.with_index(1) do |brand, index|
    #   puts "#{index}. #{brand.name}"
    # end   
  
      # puts (<<-DOC)
      #   1. Burberry
      #   2. Dolce & Gabbana
      #   3. Gucci
      #   4. Brioni
      #   5. Saint Laurent
      # DOC
      
      puts "What brand would you like to learn more about?"
      puts "Please enter the number of the brand you would like learn about (1-40)."
       input = gets.strip.downcase
       case input
          when "0"
            puts "exit"
          when "1"
            puts "Burberry description"
            
            Tailoring::Scraper.scrape_links(url)
          when "2"  
            puts "Dolce & Gabbana description"
          when "3"
            puts "Gucci description"
          when "4"
            puts "Brioni description"
          when "5"
            puts "Saint Laurent description"
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