function something()
{
	var x = window.localStorage.getItem('aaa');

	x = x*1 + 1;

	window.localStorage.setItem('aaa', x);

	alert (x);

}


function add_to_cart(id)
{
	var key = 'product_' + id;
	
	var x = window.localStorage.getItem(key);
		x = x*1 + 1;
		window.localStorage.setItem(key, x);
		// число элементов в корзине
		alert ("Items in your cart " + cart_items());

	// var z = 0;
	// 	$.each(localStorage, function(key, value)
	// 	{z = z*1 + value*1});
	// 	alert ("Total order: " + z);

}


function cart_items()
{
		cnt = 0;

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
		orders = '';

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

// 	var z = 0
// 		Object.keys(localStorage).forEach(function(key){
//    		console.log(localStorage.getItem(key));
// 			z = z*1 + x;
// 			alert ("You added " + z);})
// }

// function add_to_cart(id)
// {
// 	var key = 'product_' + id;
	
// 	var x = window.localStorage.getItem(key);
// 		x = x*1 + 1;
// 		window.localStorage.setItem(key, x);

// 	var z = 0
// 		Object.keys(localStorage).forEach(function(key){
//    		console.log(localStorage.getItem(key));
// 			z = z*1 + x;
// 			alert ("You added " + z);})
// }