return function(arr, predict: (any) -> boolean)
	local final = {}

	for index, value in arr do
		if not predict(value) then continue end
		final[index] = value
	end

	return final
end
