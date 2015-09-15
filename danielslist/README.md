== README

I would firstly like to give a big thank you to Joel, Jack and Mike for helping me with this project.

* Danielslist is a craigslist-esque app through which a user can sign in and post an item into the applicable category and subcategory. Other users are able to manually browse for items they like through the aformentioned categories and subcategories or by using a simple keyword search that looks through item names and descriptions.

* If a user clicks on an item that he or she likes, the owner can be contacted through a one-to-one messaging service. 

* There are two main tables: Users and Items. The User table contains a username field, an email field, a password field and a password confirmation field. The item table consists of a name, description and an optional image field that uses Cloudinary for uploading image files. There is also a price field, which doesn't display if an item is posted in the personals or community. A user can have many items but an item can only belong to a single user. There are two smaller tables; subcategories and categories. A subcategory has many items and an item belongs to a category. A category has many subcategories and has many items through subcategories.

* The messaging system consists of two models obtained through the mailboxer gem; Mailbox and Conversations. The mailbox contains the main views i.e. the inbox, sent messages and the trash. The inbox also has the capacity to view individual messages. The conversations model handles the messages themselves. The mailboxer generally has the capacity to have many recipients (other users) and a subject category that can be assigned by the sender. Since this app is essentially acting as a classifides service, the link required to compose a message has been disabled, as has the ability to set the subject title and the recipients. By clicking on the contact user link on the item show page, the recipient is automatically set to the owner of the item and the subject title is the item's name. It is important to set config.uses_emails to false in danielslist/config/initializers/mailboxer.rb prior to pushing to heroku since mailboxer is not handling emails.

* My main goals of constructing the models to run the app was achieved. Most of my stretch goals were achieved as well, including the search bar and the mailboxer. If I had more time, I would have made the item posting form more customisable depending on their subcategory type like craigslist. I would have also used heroku to scrape posts from craigslist in order to populate my site.

* Gems used: bootstrap, cloudinary, mailboxer

* Deployment instructions: ensure seeds have run since the categories and subcategories are set there.




