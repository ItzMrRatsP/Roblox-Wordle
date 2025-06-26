return function(b1, b2)
	if not b1 or not b2 then return end

	local weld = Instance.new("Weld")
	weld.Part0 = b1
	weld.Part1 = b2
	weld.C0 = b1.CFrame:ToObjectSpace(b2.CFrame)
	weld.Parent = b1
end
