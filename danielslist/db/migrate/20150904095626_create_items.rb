class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.text :name
    	t.text :description
    	t.float :price
    	t.text :image
    	t.timestamps
    end
  end
end
