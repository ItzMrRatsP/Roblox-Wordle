local RNG = Random.new()

return function(hay)
	local hayStack = #hay
	if hayStack < 2 then
		return hay[hayStack]
	end

	-- Random picking
	local randomNeedle = RNG:NextInteger(1, hayStack)
	return hay[randomNeedle]
end
