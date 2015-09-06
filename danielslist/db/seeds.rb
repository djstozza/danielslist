User.destroy_all
u1 = User.create :username => 'smithy12345', :email => 'johnsmith@gmail.com', :name => 'John', :surname => 'Smith', :password => '12345678'

u2 = User.create :username => 'johnnyd', :email => 'johndoe@gmail.com', :name => 'John', :surname => 'Doe', :password => '12345678'

u3 = User.create :username => 'theking', :email => 'elvis@gmail.com', :name => 'Elvis', :surname => 'Presley', :password => '12345678'

u4 = User.create :username => 'djstozza', :email => 'djstozza@gmail.com', :name => 'Daniel', :surname => 'Sztolcman', :password => '12345678'

u5 = User.create :username => 'Verbal', :email => 'keyeser_soze@gamil.com', :name => 'Roger', :surname => 'Kint', :password => '12345678' 


Category.destroy_all
c1 = Category.create :name => 'For Sale'
c2 = Category.create :name => 'Housing'


Subcategory.destroy_all
sc1 = Subcategory.create :name => 'Antiques' 
sc2 = Subcategory.create :name => 'Appliances'
sc3 = Subcategory.create :name => 'Apts / Housing'
sc4 = Subcategory.create :name => 'Housing / Swap'

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



u1.items << i1 << i9
u2.items << i2 << i8
u3.items << i3 << i7
u4.items << i4 << i5
u5.items << i6 << i10


sc1.items << i1 << i3 << i4
sc2.items << i2 << i5
sc3.items << i6 << i7 << i8
sc4.items << i9 << i10


c1.subcategories << sc1 << sc2
c2.subcategories << sc3 << sc4









