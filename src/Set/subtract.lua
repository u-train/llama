--!strict
local Set = script.Parent

local Llama = Set.Parent
local t = require(Llama.t)
local types = require(Llama.types)

local validate = t.table

local function subtract<T>(set: types.Set<T>, ...: types.Set<T>): types.Set<T>
	assert(validate(set))

	local new = {}

	for key, _ in pairs(set) do
		new[key] = true
	end

	for i = 1, select('#', ...) do
		new[select(i, ...)] = nil
	end

	return new
end

return subtract