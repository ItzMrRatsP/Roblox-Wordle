return function(t, predicate)
	local filtered = {}
	for k, v in t do
		--- @param: add v to filtered if it meets the predicate
		if predicate(v) then filtered[k] = predicate(v) end
	end
	return filtered
end
