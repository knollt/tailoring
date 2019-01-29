class Tailoring::CLI  

  def start 
    puts "Welcome suit connoiseur! Lets learn more about the top suit brands."
    puts "Here are the best 40 men suit brands."
    # scrape list of brands
    # lists suit brands
    brand_list
    # ask for input -> 1-40
    # user selects #
    # brand description is pulled
  end
  
  def brand_list
    # Tailoring::Brands.all.each.with_index(1) do |brand, index|
    #   puts "#{index}. #{brand.name}"
    # end   
  
      puts (<<-DOC)
        1. Burberry
        2. Dolce & Gabbana
        3. Gucci
        4. Brioni
        5. Saint Laurent
      DOC
    end   
  
  # puts "What brand would you like to learn more about?"
  # input = gets.strip
  
  # brand = Tailoring::Brands.find(input.to_i)
  
  
  # puts "Would you like to see another brand? Enter Y or N"
  
  # input = gets.strip.downcase
  # if input == "Y"
  #   brand_list
  # elsif input == "N"
  #   puts "Thank you! Have a nice day."
  #   exit instance method
  # else 
  #   puts "I don't understand that answer."
  #   start
  # end   
  
end 