class Tailoring::Brands

attr_accessor :desc, :name

  @@all = []

  def self.brand_list(brd)
    self.new(
      brd.css("h2").text,
      
      )
  end  
  
  def initialize(name=nil, desc=nil)
    @name = name 
    @desc = desc 
  end
  
  def self.all
    @@all
  end 
  
  
end 