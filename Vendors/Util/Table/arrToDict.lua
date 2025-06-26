return function(arr)
	local dict = {}

	for _, value in arr do
		dict[value] = value
	end

	return dict
end
