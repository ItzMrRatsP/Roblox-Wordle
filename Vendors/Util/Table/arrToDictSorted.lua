return function(arr)
	local t = {}

	for index, value in arr do
		t[value] = index
	end

	return t
end
