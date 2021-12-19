--!strict
local Set = script.Parent

local Llama = Set.Parent
local t = require(Llama.t)
local types = require(Llama.types)

local validate = t.tuple(t.table, t.any)

local function has<T>(set: types.Set<T>, key: T): boolean
	assert(validate(set, key))

	return set[key] == true
end

return has