return function(arr)
	local values = {}

	for _, value in arr do
		table.insert(values, value)
	end

	return values -- {[A] = B} -> {B}
end
