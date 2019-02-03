class Tailoring::Brands

attr_accessor :url, :name

  @@all = []

  def initialize(name, url)
    @name = name 
    @url =  url
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