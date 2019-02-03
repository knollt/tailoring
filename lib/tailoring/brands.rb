class Tailoring::Brands

attr_accessor :url, :name

  @@all = []

  def self.new_suit_list (r)
    self.new(
      r.css("h2.m_-1121914113895685247MsoListParagraph").text, 
      # r.css("a.fasc-button.fasc-size-medium.fasc-type-glossy.fasc-ico-before.dashicons-cart.external").link.attributes["href"].value
      )
  end 
  
  def initialize (name=nil, url=nil)
    @name = name 
    @url =  url
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  
  
end 