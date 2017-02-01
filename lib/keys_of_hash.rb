class Hash
	def keys_of(*arguments)
		array_arguments = arguments.collect {|keys| keys}
		hash_results = Hash.new
		i = 0
			while i < array_arguments.length do
				hash_results.merge!(self.select {|keys,value| value == array_arguments[i]})
				i += 1
			end
		hash_results.keys
	end
end