return function(num: number): string
	return tostring(num):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end
