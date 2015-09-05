User.destroy_all
u1 = User.create :username => 'smithy12345', :email => 'johnsmith@gmail.com', :name => 'John', :surname => 'Smith', :password => '12345678'

u2 = User.create :username => 'johnnyd', :email => 'johndoe@gmail.com', :name => 'John', :surname => 'Doe', :password => '12345678'

u3 = User.create :username => 'theking', :email => 'elvis@gmail.com', :name => 'Elvis', :surname => 'Presley', :password => '12345678'

u4 = User.create :username => 'djstozza', :email => 'djstozza@gmail.com', :name => 'Daniel', :surname => 'Sztolcman', :password => '12345678'

Category.destroy_all
c1 = Category.create :name => 'For Sale'


Subcategory.destroy_all
sc1 = Subcategory.create :name => 'Antiques' 
sc2 = Subcategory.create :name => 'Appliances'

Item.destroy_all
i1 = Item.create :name => 'Some Item', :description => 'blah blah blah blah blah', :price => '99.99', :image => 'http://fillmurray.com/200/200'
i2 = Item.create :name => 'Another Item', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim quaerat illo rem quam alias aperiam eaque nemo necessitatibus magni similique reprehenderit fugiat pariatur nobis aut dolore ea corporis, ad dolorem.', :price => '29.99', :image => 'http://fillmurray.com/200/200'
i3 = Item.create :name => 'Yet Another Item', :description => "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.", :price => '15.00', :image => 'http://fillmurray.com/200/200'

i4 = Item.create :name => 'This is getting boring', :description => "Plaid before they sold out biodiesel retro hella, whatever Marfa Truffaut tofu. Bitters heirloom asymmetrical gentrify Godard messenger bag flannel. Aesthetic normcore Intelligentsia, irony tousled paleo yr lomo cray iPhone. Portland semiotics mustache meh, viral try-hard Kickstarter kitsch bicycle rights plaid biodiesel Echo Park cliche swag. Helvetica tofu try-hard, bitters letterpress gluten-free brunch fanny pack vegan viral banh mi. Paleo pug fingerstache cornhole. Mustache tote bag post-ironic, deep v McSweeney's typewriter distillery single-origin coffee tattooed jean shorts taxidermy Vice.", :price => '1000', :image => 'http://fillmurray.com/200/200'

i5 = Item.create :name => "What's in the box???", :description => 'Bacon ipsum dolor amet meatloaf ullamco et reprehenderit turducken tail bresaola nulla commodo venison kielbasa laborum. Exercitation brisket in shankle jowl duis. Cillum pancetta incididunt corned beef magna, prosciutto quis do bacon ut short ribs fatback. Occaecat sed incididunt turkey aliquip.', :price => '12', :image => 'http://fillmurray.com/200/200'


u1.items << i1
u2.items << i2
u3.items << i3
u4.items << i4 << i5
sc1.items << i1 << i3 << i4
sc2.items << i2 << i5
c1.subcategories << sc1 << sc2








