return function(callback)
	local db = false

	return function(...)
		if db then return end
		db = true

		task.spawn(function(...)
			callback(...)
			db = false
		end, ...)
	end
end
