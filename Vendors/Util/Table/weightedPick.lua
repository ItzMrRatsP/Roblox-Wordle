local R = Random.new()

local function getValueWithMostProbablitiy(weights)
	local currentProbablitiy = 0
	local currentValue = nil

	for i, w in weights do
		if w > currentProbablitiy then currentValue = i end
	end

	return currentValue
end

return function(weights, values)
	local w = 0
	for _, v in weights do
		w += v
	end

	w = R:NextNumber() * w

	for i, v in weights do
		w = w - v
		if w > 0 then continue end
		return values[i], i
	end

	local likelyToHappend = getValueWithMostProbablitiy(weights)
	return values[likelyToHappend], likelyToHappend
end
