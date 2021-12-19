--!strict

local Set = script.Parent
local isSubset = require(Set.isSubset)

local Llama = Set.Parent
local t = require(Llama.t)
local types = require(Llama.types)

local validate = t.tuple(t.table, t.table)

local function isSuperset<T>(superset: types.Set<T>, subset: types.Set<T>): boolean
	assert(validate(superset, subset))

	return isSubset(subset, superset)
end

return isSuperset