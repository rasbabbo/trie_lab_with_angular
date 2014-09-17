WordCtrls = angular.module("WordsCtrls", [])

class WordsCtrl

		constructor: (@scope, @Word) ->
			@messedUp = "git this snizzy werkin"
			@Word.all()
			return this

		addWord: (newWord) ->
			@Word.create(newWord)
			.success (data) ->
				console.log(data)

		sayHello: () ->
			"sippin some bubbly!!"


WordsCtrls.controller("WordsCtrl", ["$scope", "Word", WordsCtrl])