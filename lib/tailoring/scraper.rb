class Tailoring::Scraper 

  def self.scrape_brands(url)
    # open url and scrap brands
    
    webpage = Nokogiri::HTML(open(url))
    
    brand_list = webpage.css("h2.m_-1121914113895685247MsoListParagraph")
    
    brand_list.each.map do |brand|
      brand.text
    end  
  end
  
  
  def self.scrape_links(url)
    # open sraped brand url 
    webpage = Nokogiri::HTML(open(url))
    
    brand_link = webpage.css("a.fasc-button.fasc-size-medium.fasc-type-glossy.fasc-ico-before.dashicons-cart.external")
    
    brand_link.map do |link|
      puts 'Please click url link below to shop this brand.'
       
      Tailoring::Brands(link.text, link.attributes["href"].value)
     
    end 
    
    
  end   
  
end 



