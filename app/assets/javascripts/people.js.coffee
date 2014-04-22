# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class Person
  constructor: (@name) ->

  say_name: ->
    "My name is #{@name}!"

  move: (meters) ->
    alert @name + " moved #{meters}m."

class Seller extends Person
  move: ->
    alert "Slithering..."
    super 5

class Runner extends Person
  move: ->
    alert "Galloping..."
    super 45

@Person = Person