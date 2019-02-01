class Tailoring::Brands

attr_accessor :desc, :name

  @@all = []

  def initialize(name=nil, desc=nil)
    @name = name 
    @desc = desc
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