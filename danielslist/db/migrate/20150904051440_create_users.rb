class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.text :email
    	t.text :username
    	t.text :name
    	t.text :surname
      t.timestamps null: false
    end
  end
end
