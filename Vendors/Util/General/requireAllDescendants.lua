return function(parent: Instance)
	for _, mod in parent:GetDescendants() do
		if not mod:IsA("ModuleScript") then
			continue
		end
		local success, res = pcall(function()
			require(mod)
		end)

		if not success then
			warn(res)
		end
	end
end
