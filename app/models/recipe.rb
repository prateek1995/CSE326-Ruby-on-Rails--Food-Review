class Recipe
	include HTTParty
	ENV["FOOD2FORK_KEY"] = 'e1d6995f0a7542d76ea1025594bc1f02'
	base_uri 'http://food2fork.com/api'
	default_params key: ENV["FOOD2FORK_KEY"]
	format :json

	def self.fxn term
		get("/search", query: { q: term})["recipes"]
	end
end
