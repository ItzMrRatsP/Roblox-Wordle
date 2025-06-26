local TweenService = game:GetService("TweenService")

return function(model, info, config: { old: number, new: number })
	local NumberValue = Instance.new("NumberValue")
	NumberValue.Value = config.old or 0

	NumberValue:GetPropertyChangedSignal("Value"):Connect(function()
		for _, instance in model:GetChildren() do
			if not instance:IsA("BasePart") then continue end
			if instance == model.PrimaryPart then continue end

			instance.Transparency = NumberValue.Value
		end
	end)

	return TweenService:Create(NumberValue, info, { Value = config.new })
end
