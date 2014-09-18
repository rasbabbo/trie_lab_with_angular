WordCtrls = angular.module("WordCtrls", [])


class WordsCtrl

		constructor: (@scope, @http, @Word) ->
			this.messedUp = "git this snizzy werkin"
			@Word.all()
				.success (data)=>
					@words = data

		addWord: (newWord)->

			@Word.create(newWord)
				.success (data) =>
					@words.push data

		sayHello: () ->
			"sippin some bubbly!!"


WordCtrls.controller("WordsCtrl", ["$scope", "$http", "Word", WordsCtrl])