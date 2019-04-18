class ShopProducts < ActiveRecord::Migration[5.2]
	enable_extension "plpgsql"
    def change
    	create_table :products do |t|
    	  	t.string :title
    	  	t.text :description
    	  	t.decimal :price
    	  	t.decimal :size
    	  	t.boolean :is_spicy
    	  	t.boolean :is_veg
    	  	t.boolean :is_bestoffer
    	  	t.string :pathtoimage
    		t.timestamps
      end
    end
end
