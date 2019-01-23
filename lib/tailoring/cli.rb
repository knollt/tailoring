class Tailoring::CLI  

  def start 
    puts "Welcome suit connoiseur! Lets learn more about the top suit brands."
    puts "Here are the best 40 men suit brands."
    # scrape list of brands
    # lists suit brands
    # ask for input -> 1-40
    # user selects #
    # brand description is pulled
  end
  
  def brand_list
    Tailoring::Brands.all.each.with_index(1) do |brand, index|
      puts "#{index}. #{brand.name}"
    end   
  end   
  
end 