local None = require(script.Parent.None)

export type None = None.None

export type Set<T> = {
	[T]: boolean
}

export type List<T> = {
	[number]: T
}

export type Dictionary<K, V> = {
	[K]: V
}

export type Table = {
	[any]: any
}

return 1