class Tailoring::Brands

attr_accessor :url, :name

  @@all = []

  def initialize(name=nil, url)
    @name = name 
    @url = "https://www.thetrendspotter.net/best-suit-brands-men/" + url
    @@all << self #saving/remembering object
  end
  
  def self.brand_list(brd)
    self.new(
      brd.css("h2").text,
      
      )
  end  
  

  
  def self.all
    @@all
  end 
  
  
end 