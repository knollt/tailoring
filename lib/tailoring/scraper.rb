class Tailoring::Scraper 

  def self.scrap_brands(url)
    # open url and scrap brands
    
    webpage = Nokogiri::HTML(open(url))
    
    brand_list = webpage.css("h2.m_-1121914113895685247MsoListParagraph")
    
    brand_list.each.map do |brand|
      brand.text
    end  
  end
  
  def scrap_desc
  end   
  
end 



# brand_desc: = 