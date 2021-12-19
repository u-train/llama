--!strict
local None = newproxy(true)

getmetatable(None :: any).__tostring = function()
	return "Llama.None"
end

export type None = typeof(None)

return None