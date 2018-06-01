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

	var z = 0
		Object.keys(localStorage).forEach(function(key){
   		console.log(localStorage.getItem(key));
			z = z*1 + x;
			alert ("You added " + z);})
}