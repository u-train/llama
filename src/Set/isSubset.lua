--!strict

local Set = script.Parent

local Llama = Set.Parent
local t = require(Llama.t)
local types = require(Llama.types)

local validate = t.tuple(t.table, t.table)

local function isSubset<T>(subset: types.Set<T>, superset: types.Set<T>): boolean
	assert(validate(subset, superset))

	for key, value in pairs(subset) do
		if superset[key] ~= value then
			return false
		end
	end

	return true
end

return isSubset