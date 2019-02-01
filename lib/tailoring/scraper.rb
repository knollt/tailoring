class Tailoring::Scraper 

  def self.scrap_brands(url)
    # open url and scrap brands
    
    webpage = Nokogiri::HTML(open(url))
    
    brand_list = webpage.css("h2.m_-1121914113895685247MsoListParagraph")
    
    brand_list.each.map do |brand|
      brand.text
    end  
  end
  
  
  def self.scrap_links(url)
    # open sraped brand url 
    webpage = Nokogiri::HTML(open(url))
    
    brand_link = webpage.css("a.fasc-button.fasc-size-medium.fasc-type-glossy.fasc-ico-before.dashicons-cart.external")
    
    brand_link.each.map do |link|
      puts 'in shop link'
      # binding pry 
      # link.text
    end 
  end   
  
end 



