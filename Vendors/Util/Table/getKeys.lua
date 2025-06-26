return function(arr)
	local keys = {}

	for key, _ in arr do
		table.insert(keys, key)
	end

	return keys -- {[A] = B} -> {A}
end
