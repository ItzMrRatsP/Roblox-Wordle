local function recursive(haystack: { [any]: any })
	local output = {}

	for index, value in haystack do
		if typeof(value) == "table" then
			output[index] = recursive(value)
			continue
		end

		output[index] = value
	end

	return output
end

return recursive
