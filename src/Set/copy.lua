--!strict
local Set = script.Parent

local Llama = Set.Parent
local types = require(Llama.types)

local Dictionary = Llama.Dictionary
local copy = require(Dictionary.copy) :: <T>(types.Set<T>) -> types.Set<T>

return copy