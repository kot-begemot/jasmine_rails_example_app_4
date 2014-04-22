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

    it "should be hones and put maney to safe", ->
      spyOn(@person, '_put_money_to_safe')

      @person.takes_money(5)

      expect(@person._put_money_to_safe).toHaveBeenCalled()
      expect(@person._put_money_to_safe.calls.argsFor(0)).toEqual [5, "EinZweiDrei"]
