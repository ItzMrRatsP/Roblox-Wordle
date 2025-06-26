-- Lerp to destination from x to y
return function(x, y, t)
	return x + (y - x) * t
end
