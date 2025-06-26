return function(t, predicate)
	local filtered = {}
	for k, v in t do
		if not predicate(k, v) then continue end
		filtered[k] = v
	end
	return filtered
end
