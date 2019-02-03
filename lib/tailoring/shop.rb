class Tailoring::Shop 

    def self.scrape_links(url)
    # open sraped brand url 
    webpage = Nokogiri::HTML(open(url))
    
    brand_link = webpage.css("a.fasc-button.fasc-size-medium.fasc-type-glossy.fasc-ico-before.dashicons-cart.external")
    
    brand_link.map do |link|
      # puts 'Please use the url link below to shop this brand.'
      link.attributes["href"].value
      # Tailoring::Brands(link.text, link.attributes["href"].value)
    end 
    
    
  end

  
end 