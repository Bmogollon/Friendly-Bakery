PRODUCTS = []
CAKE=[]
COOKIES= []
MUFFINS =[]

class Products
	attr_accessor :name, :price, :info, :images
	def initialize(name,price,info,images)
		@name = name
		@price = price
		@info = info
    @images = images
    PRODUCTS << self
	end
end

class Cake < Products
	def initialize(name, price,info, images)
		super(name, price,info,images)
		CAKE << self
	end
end
class Cookie < Products
  def initialize(name, price,info,images)
    super(name, price,info,images)
    COOKIES << self
  end
end


class Muffin < Products
  def initialize(name, price,info,images)
    super(name, price,info,images)
    MUFFINS << self
  end
end
