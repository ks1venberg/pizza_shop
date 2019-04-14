function add_to_cart(id)
{
	var key = 'product_' + id;
	
	var x = window.localStorage.getItem(key);
		x = x*1 + 1;
		window.localStorage.setItem(key, x);
		// число элементов в корзине
		// alert ("Items in your cart " + cart_items());
	update_cart();
	update_orders_button();
}

function update_cart()
{
	var orders = cart_get_orders();
	$('#orders_input').val(orders);

}

function update_orders_button()
{
	var text = 'Cart (' + cart_items() + ')';
	$('#orders_button').val(text);
}


function cart_items()
{
		var cnt = 0;

	for(var i=0; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);

		if(key.indexOf('product_') == 0)
		{
			cnt = cnt + value*1;
		}
	}
	return cnt;
}

function cart_get_orders()
{
		var orders = '';

	for(var i=0; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);

		if(key.indexOf('product_') == 0)
		{
			orders = orders + key + '=' + value + ',';
		}
	}
	return orders;
}

function cancel_order()
{
	window.localStorage.clear()
	
	update_cart();
	update_orders_button();

	$('#cart').text('Now cart is empty');

	// alert('Cart is cleared');
	return false;
}