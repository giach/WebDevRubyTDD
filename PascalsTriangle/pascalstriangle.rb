def compute_row(n)
  return [1,1] if n == 2
  return [1] if n == 1
  return nil unless n.is_a? Fixnum
  
  a = [1,1]
  aux = []

	if n > 2
		aux.push(1)
		(1..n-2).each do |j|
			(0..j-1).each do |i|
				#puts  a[i], a[i + 1]
				sum = a[i] + a[i + 1]
				aux.push(sum)
			end
			aux.push(1)
			a = aux
			aux = []
			aux.push(1)
		end
	end

	return a
end

