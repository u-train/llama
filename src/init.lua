--!strict
local types = require(script.types)
export type None = types.None
export type Set<T> = types.Set<T>
export type List<T> = types.List<T>
export type Dictionary<K, V> = types.Dictionary<K, V>
export type Table = types.Table

local Llama = {
	Dictionary = require(script.Dictionary),
	List = require(script.List),
	Set = require(script.Set),

	equalObjects = require(script.equalObjects),
	isEmpty = require(script.isEmpty),

	None = require(script.None),
}

return Llama