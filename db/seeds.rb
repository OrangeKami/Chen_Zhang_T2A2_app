# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ActiveRecord::Base.connection.disable_referential_integrity do
  ApplicationRecord.descendants.each do |model|
    model.delete_all
  end
end

user = User.new(username: "Test", email: "test@test.com", password: "123456")
user.save!
user1 = User.new(username: "Test1", email: "test1@test.com", password: "123456")
user.save!
user2 = User.new(username: "Admin", email: "admin@test.com", password: "123456")
user2.toggle!(:admin)
user.save!

listing = Listing.new(name: "Ponytail Palm",  user: user1,  description: "Officially called the Beaucarnea recurvata, the slow-growing ponytail palm likes basking in a sunny window. Don't douse the Mexico native with too much water.", price: 12, category: "Plants", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1557256823-beaucarnea-recurvata-ponytail-palm-1557256813.jpg?crop=0.889xw:1.00xh;0.0721xw,0&resize=768:*")
listing.save!

listing = Listing.new(name: "ZZ Plant",  user: user,  description: "Officially named Zamioculcas zamiifolia, the ZZ plant is native to East Africa. Called the king of the indestructible plants, the species tolerates the dangerous trifecta of plant-killers: drought, low light, and really low humidity.", price: 13, category: "Plants",  image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1557179245-the-sill-houseplant-zz-plant-1-6-014-2230x-progressive-1557179231.jpg?crop=1.00xw:0.774xh;0,0.143xh&resize=768:*")
listing.save!

listing = Listing.new(name: "Aloe",  user: user1,  description: "Aloe vera is a succulent plant species of the genus Aloe. The plant is stemless or very short-stemmed with thick, greenish, fleshy leaves that fan out.", price: 14, category: "Plants", image: "https://images.unsplash.com/photo-1509423350716-97f9360b4e09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80")
listing.save!

listing = Listing.new(name: "Bonsai",  user: user,  description: "A Bonsai tree is a replication of nature, in the form of a miniature tree, without displaying the human intervention too clearly. The connotations or added/implied Bonsai tree meanings include: A general tree-like shape or style.", price: 15, category: "Plants",  image: "https://images.unsplash.com/photo-1467043198406-dc953a3defa0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=670&q=80")
listing.save!

listing = Listing.new(name: "Pothos",  user: user,  description: "This trailing vine has earned the nickname devil's ivy for its ability to withstand nearly pitch-black conditions as well as under- and over-watering.", price: 16, category: "Plants", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654968-il_570xN.2485154742_kpa5.jpg?crop=0.856xw:0.955xh;0.0263xw,0.0274xh&resize=768:*")
listing.save!

listing = Listing.new(name: "Poinsettia",  user: user1,  description: "Poinsettias are cheery plants that are widely grown indoors over Christmas for their brightly coloured bracts.", price: 17, category: "Plants", image: "https://images.unsplash.com/photo-1606064835109-5633e21382c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80")
listing.save!

listing = Listing.new(name: "Jade Plant",  user: user1,  description: "Jade retains water in its round leaves, so it can sometimes survive more than a month without any attention whatsoever.", price: 18, category: "Plants", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654852-jade-plant-1589561938.jpg?crop=0.6677678150070788xw:1xh;center,top&resize=768:*")
listing.save!

listing = Listing.new(name: "Air Plant",  user: user,  description: "You can keep the potting soil in the shed for this one. Tillandsia grows without dirt altogether. Just dunk them in water for about two or three hours every 10 days or so, says expert gardener.", price: 19, category: "Plants", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1557179346-air-plants-royalty-free-image-932521176-1557179326.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=768:*")
listing.save!

listing = Listing.new(name: "Chinese Money Plant",  user: user1,  description: "Pilea peperomioides grows best in a shady spot (or winter windowsill) with weekly watering. You can replant the offshoots that sprout from the base of the stem and give them as gifts.", price: 20, category: "Plants", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654819-il_794xN.2440665192_1z8d.jpg?crop=1xw:1.00xh;center,top&resize=768:*")
listing.save!

listing = Listing.new(name: "Alisa Plant Pot",  user: user,  description: "The Alisa concrete Plant Pot by Urban Products features a modern stripe design in a range of colours, creating an earthy vibe. This indoor pot is a perfect companion for succulents and cactus.", price: 12, category: "Pots", image: "https://cdn.shopify.com/s/files/1/0574/8736/0174/products/alisa-plant-pot-11cmmyjunglehome-657855_200x200_crop_center.jpg?v=1630707441")
listing.save!

listing = Listing.new(name: "Atlas Egg Plant Pot ",  user: user,  description: "The Atlas Egg Plant Pot range by Northcote Pottery is an ever classic design that will suit any space. Finished in a gorgeous matte terrazzo, they come in three colours (Black, White & Pink). They are lightweight making them suitable for both indoor and outdoor use.", price: 35, category: "Pots", image: "https://cdn.shopify.com/s/files/1/0574/8736/0174/products/atlas-egg-plant-pot-large-28cm-my-jungle-home-749426_200x200_crop_center.jpg?v=1634298173")
listing.save!

listing = Listing.new(name: "Cement Plant Pot",  user: user1,  description: "This Cement plant pot is a beautifully textured design that will compliment any plant and any space indoors or out. A round planter with curved sides down to a flat base, this smooth sided planter will add interest and texture to your design.", price: 47, category: "Pots", image: "https://cdn.shopify.com/s/files/1/0574/8736/0174/products/cement-plant-pot-24cm-my-jungle-home-379775_200x200_crop_center.jpg?v=1634298173")
listing.save!

listing = Listing.new(name: "Haws 'The Bartley Burbler' - Sage Watering Can",  user: user,  description: "Give your plants a drink using this traditional style watering can. It's light and perfect for watering indoor plant as well as seedlings. Great as a gift for child and adult gardeners alike.", price: 23, category: "Accessories", image: "https://cdn.shopify.com/s/files/1/0269/5689/0193/products/H100-2-SAG_TheBartleyBurblerSageTwoPint_1024x1024@2x.jpg?v=1654079508")
listing.save!

listing = Listing.new(name: "Dr. Houseplant - Plant Book",  user: user1,  description: "Dr. Houseplant: An indispensable guide to keeping your indoor plants healthy and happy", price: 33, category: "Accessories", image: "https://cdn.shopify.com/s/files/1/0269/5689/0193/products/drhouseplant_1024x1024@2x.jpg?v=1654079408")
listing.save!

