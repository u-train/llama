--!strict
local Llama = script.Parent
local t = require(Llama.t)
local types = require(Llama.types)

local validate = t.table

local function isEmpty(table: types.Table)
	assert(validate(table))

	return next(table) == nil
end

return isEmpty