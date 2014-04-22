describe "People", ->

  describe "Person", ->
    beforeEach ->
      @person = new Person "Jon Doe"

    it "should name himself", ->
      expect(@person.say_name()).toEqual "My name is Jon Doe!"

  describe "Seller", ->
    beforeEach ->
      @person = new Seller "Jon Doe"

    it "should have zero balance", ->
      expect(@person.money).toEqual 0

    it "should get money if password is correct", ->
      result = @person._put_money_to_safe(5, "EinZweiDrei")

      expect(@person.money).toEqual 5
      expect(result).toEqual true

    it "should not get money if password is wrong", ->
      result = @person._put_money_to_safe(5, "DreiZweiEin")

      expect(@person.money).toEqual 0
      expect(result).toEqual false

