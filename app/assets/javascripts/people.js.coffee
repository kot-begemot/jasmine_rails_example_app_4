# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
global = @
class Person
  constructor: (@name) ->
    @_global_name         = 'G' + Math.floor(Math.random() * 10000000)
    global[@_global_name] = @

  say_name: ->
    "My name is #{@name}!"

  move: (meters) ->
    alert @name + " moved #{meters}m."

  say_name_loud: (public_place) ->
    jQuery(public_place).append(@say_name())

  _global: ->
    global[@_global_name]

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
  constructor: (@name) ->
    super
    @stamina = 100

  move: ->
    alert "Galloping..."
    super 45

  run: (minutes) ->
    if @stamina > 0 && @stamina - minutes > 0
      @_run(minutes)

  _run: (minutes) ->
    if minutes > 0
      @_get_tired()

      _f = @_global()
      global.setTimeout (-> _f._run(minutes - 1)), 1000

  _get_tired: ->
    @stamina -= 1

@Person = Person
@Seller = Seller
@Runner = Runner