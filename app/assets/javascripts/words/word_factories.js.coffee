WordFactories = angular.module("WordFactories", [])

class Word

	constructor: (@http)->

	all: ()->
		@http.get("/words.json")

	create: (newWord)->
		@http.post("/words.json", {word: newWord})		


WordFactories.service("Word", ["$http", Word])













