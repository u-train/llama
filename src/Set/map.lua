--!strict
local Set = script.Parent

local Llama = Set.Parent
local t = require(Llama.t)
local types = require(Llama.types)

local validate = t.tuple(t.table, t.callback)

local function map<T1, T2>(set: types.Set<T1>, mapper: (T1) -> T2): types.Set<T2>
	assert(validate(set, mapper))

	local new = {}

	for key, _ in pairs(set) do
		local newKey = mapper(key)

		if newKey ~= nil then
			new[newKey] = true
		end
	end

	return new
end

return map