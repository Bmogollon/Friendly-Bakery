require "sinatra"
require_relative "classes.rb"
require_relative "test.rb"



def email_sent(recipient)
  Newsletter.welcome(recipient).deliver_now
end



get "/" do
# puts ENV['EMAIL_USERNAME']
erb :home
end

get "/cake" do
  @banana = Cake.new("Banana Cake", 8.33, "Banana cake is a cake prepared using banana as a primary ingredient and typical cake ingredients.A tasty banana cake is a good alternative to banana bread when you're looking for a sweet treat.", "images/banana.png" )

  @blueberry = Cake.new("Blueberry Cake",5.35, "Looking for a great blueberry cake recipe? Allrecipes has more than 80 trusted recipes for blueberry cakes complete with ratings, reviews and mixing tips.", "images/blueberry.png")

  @apple = Cake.new("Apple Cake", 10.22, "Warm apple cake from the oven is the flavor of fall. Cinnamon, caramel, nuts, and frostings set these cakes apart.Apple cake is a popular dessert produced with the main ingredient of apples. Such a cake is made through the process of slicing this sweet fruit.", "images/apple.png")
erb :cake
end


get "/cookies" do

  @cutout = Cookie.new("Cutout Cookie", 15.22, "Full of lemony flavor, these cookies are great for any time of year and always popular with family and friends.Decorating cut out cookies is the ultimate arts & crafts type activity that you get to EAT afterwards.You can truly do any shape you’d like, and I even do many different shapes with one batch of dough.", "images/cutout.png" )

  @peanut = Cookie.new("Peanut Butter Cookie", 124.23, "It is amazing how much flavor these simple peanut butter cookies have. I make them very often because I always have the ingredients on hand. —Maggie Schimmel, Wauwatosa, Wisconsin","images/peanut.png" )

  @monster = Cookie.new("Monster Cookie", 1240.22, "Who can resist gigantic monster cookies chock-full of goodies like chocolate chips, M&M’s and peanut butter? If your appetite isn’t quite monster-size, make them by heaping tablespoonfuls. —Judy Fredenberg, Missoula, Montana", "images/monster.png" )

erb :cookies
end


get "/muffins" do
  @cinamon = Muffin.new("Apple Cinamon Muffin", 12425.22, "These apple-cinnamon muffins pack a huge apple flavor thanks to apple cider and chopped apples, with a fabulous cinnamon-sugar crunch on top.", "images/cinamon.png" )

  @Banana_Muffin = Muffin.new("Banana Muffin", 1535324.23, "These have been a favorite of mine for over 10 years. It’s one of the first recipes I started baking over and over again. They’re sweet and delicious – breakfast or dessert!.Banana bread is a type of bread made from mashed bananas. It is often a moist, sweet, cake-like quick bread","images/banana-muffin.png" )

  @corn = Muffin.new("Cornbread Muffin", 12532530.22, "These savory corn muffins are loaded with corn flavor and are the perfect accompaniment to chili or your favorite stew.", "images/cornbread.png" )

erb :muffins
end


get "/contact" do

  erb :contact,:layout => false do
end
end

post "/contact" do
  recipient = params["email"]
  email_sent(recipient)
  erb :contact
end
