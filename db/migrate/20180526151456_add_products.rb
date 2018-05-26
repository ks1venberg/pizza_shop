class AddProducts < ActiveRecord::Migration[5.2]
  def change
  		Product.create :title =>'Hawaian', :description => 'pizza with pineapple', :price => 350, :size => 30, :is_spicy => false, :is_veg => false, :is_bestoffer => false, :pathtoimage => '/pictures/hawaian.jpg'
      Product.create :title =>'Pepperoni', :description => 'ice classic pizza with spicy sausages', :price => 400, :size => 30, :is_spicy => true, :is_veg => false, :is_bestoffer => false, :pathtoimage => '/pictures/pepperoni.jpg'
  	  Product.create :title =>'Vegeterian', :description => 'light vegy pizza', :price => 300, :size => 30, :is_spicy => false, :is_veg => true, :is_bestoffer => true, :pathtoimage => '/pictures/vegy.jpg'
      

   #      Product.Create
  	# :title =>'Pepperoni', 
  	# :description => 'nice classic pizza with spicy sausages',
  	# :price => 400,
  	# :size => 30,
  	# :is_spicy => true,
  	# :is_veg => false,
  	# :is_bestoffer => false,
  	# :pathtoimage => '/pictures/pepperoni.jpg'

  	#   	Product.Create
  	# :title =>'Vegeterian', 
  	# :description => 'light vegy pizza',
  	# :price => 300,
  	# :size => 30,
  	# :is_spicy => false,
  	# :is_veg => false,
  	# :is_bestoffer => true,
  	# :pathtoimage => '/pictures/vegy.jpg'
    
  end
end
