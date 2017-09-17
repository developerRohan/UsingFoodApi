
class Recipe < ApplicationRecord

		include HTTParty

		key_value = "ffb6357d087943994b16fa55a5e8e095"
		base_uri "http://food2fork.com/api/search"
		default_params key: key_value
		format :json

		def self.for keyword
    		get("/search", query: {q: keyword})["recipes"]
  		end
end
