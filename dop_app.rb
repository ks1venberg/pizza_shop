ord_line = "product_1=2, product_2=3, product_3=4"

def parse_orders_line ord_line
	s1 = ord_line.split(/,/)

	arr = []

	s1.each do |x|
		s2 = x.split(/=/)
		s3 = s2[0].split(/_/)

		id = s3[1]
		cnt = s2[1]

		arr2=[id, cnt]
		arr.push arr2
	end
	
	return arr
end

puts parse_orders_line(ord_line).inspect