require "./pair"

class MyHash
	def initialize
		@pairs = [Pair.new("Ben", 27)]
	end

	def [](key)
		found_pair = found_pair_with_key(key)

		if found_pair
			found_pair.value
		end
	end

		def []=(key, new_value)
			found_pair = find_pair_with_key(key)
			found_pair.value = new_value
		end

private

def find_pair_with_key
	@pairs.find do |pair|
		pair.key == key
	end
	end
end


myhash = MyHash.new
puts myhash["Chris"]
myhash["Ben"] = 28
puts myhash["Ben"]