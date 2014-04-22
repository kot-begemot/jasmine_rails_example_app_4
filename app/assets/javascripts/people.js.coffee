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
  constructor: (@name) ->
    super
    @money = 0

  takes_money: (amount) ->
    @_put_money_to_safe(amount, "EinZweiDrei")

  move: ->
    alert "Slithering..."
    super 5

  _put_money_to_safe: (amount, password) ->
    if password == "EinZweiDrei"
      @money += amount
      true
    else
      false

class Runner extends Person
  move: ->
    alert "Galloping..."
    super 45

@Person = Person
@Seller = Seller