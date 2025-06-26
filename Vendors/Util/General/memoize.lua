local filter = require(script.Parent.Parent.Table.filter)

return function(fn)
	local cache = {}

	return function(...)
		local res = filter({ ... }, function(_, v)
			return v ~= nil
		end)

		local key = table.concat(res, ",")
		if cache[key] == nil then cache[key] = fn(...) end

		return cache[key]
	end
end
