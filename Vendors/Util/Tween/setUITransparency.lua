local TweenService = game:GetService("TweenService")

local classTypeTransparency = {
	ImageLabel = "ImageTransparency",
	TextLabel = "TextTransparency",
}

return function(arr: { GuiObject? }, info, newTransparency: number, fromTransparency: number)
	local NumberValue = Instance.new("NumberValue")
	NumberValue.Value = fromTransparency or 0

	NumberValue:GetPropertyChangedSignal("Value"):Connect(function()
		for _, object in arr do
			if not object:IsA("GuiObject") then continue end
			if object:IsA("Frame") then continue end
			object[classTypeTransparency[object.ClassName]] = NumberValue.Value
		end
	end)

	return TweenService:Create(NumberValue, info, { Value = newTransparency })
end
