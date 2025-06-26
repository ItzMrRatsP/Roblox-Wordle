return function(haystack, step, needle)
	if not haystack[needle + step] then return step end
	return needle + step
end
