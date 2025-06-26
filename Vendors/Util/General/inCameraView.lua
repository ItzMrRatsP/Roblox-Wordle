local camera = workspace.CurrentCamera

return function(pos)
	return (pos - camera.CFrame.Position).Unit:Dot(camera.CFrame.LookVector) > 0
end
