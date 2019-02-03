class Tailoring::Scraper 

  
  def get_page
    Nokogiri::HTML(open("https://www.thetrendspotter.net/best-suit-brands-men/"))
  end   
  
  def scrape_brands_index
    self.get_page.css("h2.m_-1121914113895685247MsoListParagraph")
  end   
    
  def suit_brands
    scrape_brands_index.each do |r|
      binding.pry 
      Tailoring::Brands.new_suit_list (r)    
    end  
  end
  
end 

    # map do |brand|
    #   brand.text

