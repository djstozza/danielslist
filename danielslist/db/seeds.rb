User.destroy_all
u1 = User.create :username => 'smithy12345', :email => 'johnsmith@gmail.com', :name => 'John', :surname => 'Smith', :password => '12345678'

u2 = User.create :username => 'johnnyd', :email => 'johndoe@gmail.com', :name => 'John', :surname => 'Doe', :password => '12345678'

u3 = User.create :username => 'theking', :email => 'elvis@gmail.com', :name => 'Elvis', :surname => 'Presley', :password => '12345678'

u4 = User.create :username => 'djstozza', :email => 'djstozza@gmail.com', :name => 'Daniel', :surname => 'Sztolcman', :password => '12345678'

u5 = User.create :username => 'Verbal', :email => 'keyeser_soze@gamil.com', :name => 'Roger', :surname => 'Kint', :password => '12345678' 


Category.destroy_all
c0 = Category.create :name => 'community'
c1 = Category.create :name => 'housing'
c2 = Category.create :name => 'jobs'
c3 = Category.create :name => 'personals'
c4 = Category.create :name => 'for sale'
c5 = Category.create :name => 'gigs'







Subcategory.destroy_all
subcats0 = ["activities", "artists", "childcare", "classes", "events", "general", "groups", "localnews", "lost+found", "musicians", "pets", "politics", "rideshare", "volunteers"] 

subcats0.each do |subcat|
	c0.subcategories.create :name => subcat
end

subcats1 = ["apts / housing", "housing swap", "housing wanted", "office / commercial", "parking / storage", "real estate for sale", "rooms / shared", "rooms wanted", "sublets / temporary", "vacation rentals"]

subcats1.each do |subcat|
	c1.subcategories.create :name => subcat
end

subcats2 = ["accounting+finance", "admin / office", "arch / engineering", "art / media / design", "biotech / science", "business / mgmt", "customer service", "education", "food / bev / hosp", "general labor" "government", "human resources", "internet engineers", "legal  /  paralegal", "manufacturing", "marketing / pr / ad", "medical / health", "nonprofit sector", "real estate", "retail / wholesale", "sales / biz dev", "salon / spa / fitness", "security", "skilled trade / craft", "software / qa / dba", "systems / network", "technical support", "transport", "tv / film / video", "web / info design", "writing / editing", "[ETC]","[ part-time ]"]

subcats2.each do |subcat|
	c2.subcategories.create :name => subcat
end

subcats3 = ["strictly platonic", "women seek women", "women seeking men", "men seeking women", "men seeking men", "misc romance", "casual encounters", "missed connections", "rants and raves"]

subcats3.each do |subcat|
	c3.subcategories.create :name => subcat
end

subcat4 = ["antiques", "appliances", "arts+crafts", "atv/utv/sno", "auto parts", "baby+kid", "barter", "beauty+hlth", "bikes", "boats", "books", "business", "cars+trucks", "cds/dvd/vhs", "cell phones", "clothes+acc", "collectibles", "computers", "electronics", "farm+garden", "free", "furniture", "garage sale", "general", "heavy equip", "household", "jewelry", "materials", "motorcycles", "music instr", "photo+video", "rvs+camp", "sporting", "tickets", "tools", "toys+games", "video"]

subcat4.each do |subcat|
	c4.subcategories.create :name => subcat
end

subcat5 = ["computer", "creative", "crew", "domestic", "event", "labor", "talent", "writing"]
subcat5.each do |subcat|
	c5.subcategories.create :name => subcat
end









Item.destroy_all
i1 = Item.create :name => 'Some Item', :description => 'blah blah blah blah blah', :price => '99.99', :image => 'http://fillmurray.com/200/200'
i2 = Item.create :name => 'Another Item', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim quaerat illo rem quam alias aperiam eaque nemo necessitatibus magni similique reprehenderit fugiat pariatur nobis aut dolore ea corporis, ad dolorem.', :price => '29.99', :image => 'http://fillmurray.com/200/200'
i3 = Item.create :name => 'Yet Another Item', :description => "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.", :price => '15.00', :image => 'http://fillmurray.com/200/200'

i4 = Item.create :name => 'This is getting boring', :description => "Plaid before they sold out biodiesel retro hella, whatever Marfa Truffaut tofu. Bitters heirloom asymmetrical gentrify Godard messenger bag flannel. Aesthetic normcore Intelligentsia, irony tousled paleo yr lomo cray iPhone. Portland semiotics mustache meh, viral try-hard Kickstarter kitsch bicycle rights plaid biodiesel Echo Park cliche swag. Helvetica tofu try-hard, bitters letterpress gluten-free brunch fanny pack vegan viral banh mi. Paleo pug fingerstache cornhole. Mustache tote bag post-ironic, deep v McSweeney's typewriter distillery single-origin coffee tattooed jean shorts taxidermy Vice.", :price => '1000', :image => 'http://fillmurray.com/200/200'

i5 = Item.create :name => "What's in the box???", :description => 'Bacon ipsum dolor amet meatloaf ullamco et reprehenderit turducken tail bresaola nulla commodo venison kielbasa laborum. Exercitation brisket in shankle jowl duis. Cillum pancetta incididunt corned beef magna, prosciutto quis do bacon ut short ribs fatback. Occaecat sed incididunt turkey aliquip.', :price => '12', :image => 'http://fillmurray.com/200/200'

i6 = Item.create :name => 'Some House', :description => 'If you have a problem if no one else can help and if you can find them maybe you can hire The A-Team.', :price => '200000', :image => 'http://fillmurray.com/200/200'

i7 = Item.create :name => 'Another House', :description => "Where's my money... bitch? WHERE'S my money. Where's my. Where's MY money, bitch? Huh? Bitch? Where's my money, bitch? Oh that's good... where's my money. Where's my money, bitch. Bitch, where's my money. I will mess you... up. That how you wanna play this?  Huh, Your call, your funeral Jack. Hey, do not mess with me I will bury you cause I'm crazy. You know, yeah... mucho loco. Do not... test me. ", :price => '4000000', :image => 'http://fillmurray.com/200/200'

i8 = Item.create :name => 'Another Random House', :description => 'DING ding ding ding ding. Ding. DING. DING DING DING. Ding, ding ding ding. DING. DING. DING! Ding, ding ding ding. Ding, ding ding ding, DING. DING. DING DING DING. Ding, ding ding. Ding, ding ding ding. Ding, ding ding. DING DING DING DING DING!! Ding, ding ding ding. Ding, ding ding ding diiiiiing. DING.', :price => '350', :image => 'http://fillmurray.com/200/200'

i9 = Item.create :name => 'Cardboard Box', :description => "Chemotherapy and marijuana go together like apple pie and Chevrolet. Facing death changes a person, it has to, don't you think? You can do this, Hank. Come on. It's supposed to hurt. Pain is weakness leaving your body. Hey, if you could get your leg up that high, I say go for it.", :price => '12', :image => 'http://fillmurray.com/200/200'

i10 = Item.create :name => 'Park Bench', :description => "What? Come on! Man, you're smart. You made poison out of beans, yo. Look, we got, we got an entire lab right here. Alright? How about you pick some of these chemicals and mix up some rocket fuel? That way you could just send up a signal flare. Or you make some kind of robot to get us help, or a homing device, or build a new battery, or... wait. No. What if we just take some stuff off of the RV and build it into something completely different? You know, like a... Like a dune buggy. That way, we can just dune buggy or... What? Hey? What is it? What?", :price => '120', :image => 'http://fillmurray.com/200/200'












