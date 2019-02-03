class Tailoring::Scraper 

  
  def get_page
    Nokogiri::HTML(open("https://www.thetrendspotter.net/best-suit-brands-men/"))
  end   
  
  def scrape_brands_list
    # open url and scrap brands
    
    brand_list = .css("h2.m_-1121914113895685247MsoListParagraph")
    brand_list.each.map do |brand|
      brand.text
    end  
  end
  
  
   
  
end 



