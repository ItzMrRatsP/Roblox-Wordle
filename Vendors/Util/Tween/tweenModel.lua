local TweenService = game:GetService("TweenService")

return function(model, info, newCF)
	local CFrameValue = Instance.new("CFrameValue")
	CFrameValue.Value = model:GetPivot()

	CFrameValue:GetPropertyChangedSignal("Value"):Connect(function()
		model:PivotTo(CFrameValue.Value)
	end)

	return TweenService:Create(CFrameValue, info, { Value = newCF })
end
