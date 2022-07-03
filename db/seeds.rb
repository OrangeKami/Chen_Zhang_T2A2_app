# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Listing.destroy_all
User.destroy_all

user = User.new(username: "Test", email: "test@test.com", password: "123456")
user.save!
user1 = User.new(username: "Test1", email: "test1@test.com", password: "123456")
user.save!
user2 = User.new(username: "Admin", email: "admin@test.com", password: "123456")
user2.toggle!(:admin)
user.save!

listing = Listing.new(name: "Ponytail Palm",  user: user1,  description: "Officially called the Beaucarnea recurvata, the slow-growing ponytail palm likes basking in a sunny window. Don't douse the Mexico native with too much water.", price: 12, category: "Plants")
listing.save!

listing = Listing.new(name: "ZZ Plant",  user: user,  description: "Officially named Zamioculcas zamiifolia, the ZZ plant is native to East Africa. Called the king of the indestructible plants, the species tolerates the dangerous trifecta of plant-killers: drought, low light, and really low humidity.", price: 13, category: "Plants")
listing.save!

listing = Listing.new(name: "Aloe",  user: user1,  description: "Aloe vera is a succulent plant species of the genus Aloe. The plant is stemless or very short-stemmed with thick, greenish, fleshy leaves that fan out.", price: 14, category: "Plants")
listing.save!

listing = Listing.new(name: "Bonsai",  user: user,  description: "A Bonsai tree is a replication of nature, in the form of a miniature tree, without displaying the human intervention too clearly. The connotations or added/implied Bonsai tree meanings include: A general tree-like shape or style.", price: 15, category: "Plants")
listing.save!

listing = Listing.new(name: "Pothos",  user: user,  description: "This trailing vine has earned the nickname devil's ivy for its ability to withstand nearly pitch-black conditions as well as under- and over-watering.", price: 16, category: "Plants")
listing.save!

listing = Listing.new(name: "Poinsettia",  user: user1,  description: "Poinsettias are cheery plants that are widely grown indoors over Christmas for their brightly coloured bracts.", price: 17, category: "Plants")
listing.save!

listing = Listing.new(name: "Jade Plant",  user: user1,  description: "Jade retains water in its round leaves, so it can sometimes survive more than a month without any attention whatsoever.", price: 18, category: "Plants")
listing.save!

listing = Listing.new(name: "Air Plant",  user: user,  description: "You can keep the potting soil in the shed for this one. Tillandsia grows without dirt altogether. Just dunk them in water for about two or three hours every 10 days or so, says expert gardener.", price: 19, category: "Plants")
listing.save!

listing = Listing.new(name: "Chinese Money Plant",  user: user1,  description: "Pilea peperomioides grows best in a shady spot (or winter windowsill) with weekly watering. You can replant the offshoots that sprout from the base of the stem and give them as gifts.", price: 20, category: "Plants")
listing.save!