User.destroy_all
u0 = User.create :username => 'djstozza', :email => 'djstozza@gmail.com', :password => '12345678', :password_confirmation => '12345678'

u1 = User.create :username => 'smithy12345', :email => 'johnsmith@gmail.com', :password => '12345678', :password_confirmation => '12345678'

u2 = User.create :username => 'johnnyd', :email => 'johndoe@gmail.com', :password => '12345678', :password_confirmation => '12345678'

u3 = User.create :username => 'theking', :email => 'elvis@gmail.com', :password => '12345678', :password_confirmation => '12345678'

u4 = User.create :username => 'Verbal', :email => 'keyeser_soze@gamil.com', :password => '12345678', :password_confirmation => '12345678'



Category.destroy_all
c0 = Category.create :name => 'community'
c1 = Category.create :name => 'gigs'
c2 = Category.create :name => 'jobs'
c3 = Category.create :name => 'personals'
c4 = Category.create :name => 'for sale'
c5 = Category.create :name => 'housing'







Subcategory.destroy_all
subcats0 = ["activities", "artists", "childcare", "classes", "events", "general", "groups", "localnews", "lost+found", "musicians", "pets", "politics", "rideshare", "volunteers"] 

subcats0.each do |subcat|
	c0.subcategories.create :name => subcat
end

subcat1 = ["computer", "creative", "crew", "domestic", "event", "labor", "talent", "writing"]
subcat1.each do |subcat|
	c1.subcategories.create :name => subcat
end

subcats2 = ["accounting+finance", "admin / office", "arch / engineering", "art / media / design", "biotech / science", "business / mgmt", "customer service", "education", "food / bev / hosp", "general labor", "government", "human resources", "internet engineers", "legal  /  paralegal", "manufacturing", "marketing / pr / ad", "medical / health", "nonprofit sector", "real estate", "retail / wholesale", "sales / biz dev", "salon / spa / fitness", "security", "skilled trade / craft", "systems / network", "technical support", "transport", "tv / film / video", "web / info design", "writing / editing"]

subcats2.each do |subcat|
	c2.subcategories.create :name => subcat
end

subcats3 = ["strictly platonic", "women seek women", "women seeking men", "men seeking women", "men seeking men", "misc romance", "casual encounters", "missed connections", "rants and raves"]

subcats3.each do |subcat|
	c3.subcategories.create :name => subcat
end

subcat4 = ["antiques", "appliances", "arts+crafts", "atv/utv/sno", "auto parts", "baby+kid", "barter", "beauty+hlth", "bikes", "boats", "books", "business", "cars+trucks", "cds/dvd/vhs", "cell phones", "clothes+acc", "collectibles", "computers", "electronics", "farm+garden", "furniture", "garage sale", "general", "heavy equip", "household", "jewelry", "materials", "motorcycles", "music instr", "photo+video", "rvs+camp", "sporting", "tickets", "tools", "toys+games", "video"]

subcat4.each do |subcat|
	c4.subcategories.create :name => subcat
end



subcats5 = ["apts / housing", "housing swap", "housing wanted", "office / commercial", "parking / storage", "real estate for sale", "rooms / shared", "rooms wanted", "sublets / temporary", "vacation rentals"]

subcats5.each do |subcat|
	c5.subcategories.create :name => subcat
end





















