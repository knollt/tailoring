class Tailoring::Scraper 

  def self.scrap_brands(url)
    # open url and scrap brands
    
    # index_page = Nokogiri::HTML(open(https://www.thetrendspotter.net/best-suit-brands-men/))
    webpage = Nokogiri::HTML(open(url))
    binding.pry 
  end
  
  def scrap_desc
  end   
  
end 

#brand_List: = webpage.css("h2.m_-1121914113895685247MsoListParagraph").text
# add [0] before text gets first item

# brand_desc: = 