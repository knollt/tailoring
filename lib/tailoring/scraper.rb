class Tailoring::Scraper 

  def get_page
    Nokogiri::HTML(open("https://www.thetrendspotter.net/best-suit-brands-men/"))
  end   
  
  # def scrape_brands_index
  #   get_page.css("h2.m_-1121914113895685247MsoListParagraph")
  # end   
    
  def suit_brands
    brand_list = get_page.css("h2.m_-1121914113895685247MsoListParagraph")
    # @suits = []
    
    brand_list.map do |r|
      # binding.pry 
      r.text
      # r.text << @suits
    end 
  end
  
end 

    # map do |brand|
    #   brand.text

