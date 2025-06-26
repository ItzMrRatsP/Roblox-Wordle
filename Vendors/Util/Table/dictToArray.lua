return function(dict)
	local t = {}

	for _, value in dict do
		table.insert(t, value)
	end

	return t
end
