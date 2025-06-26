local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Janitor = require(ReplicatedStorage.Packages.Janitor)
local Promise = require(ReplicatedStorage.Packages.Promise)

return function(sound, parent)
	if not sound then
		return
	end

	sound = sound:Clone()
	sound.Parent = parent
	sound:Play()

	local jan = Janitor.new()

	local function destroyEvent()
		-- Destroy everything
		sound:Destroy()
	end

	return jan:AddPromise(
		Promise.any({ Promise.fromEvent(sound.Stopped), Promise.fromEvent(sound.Ended) })
			:andThen(destroyEvent)
			:catch(warn)
	)
end
