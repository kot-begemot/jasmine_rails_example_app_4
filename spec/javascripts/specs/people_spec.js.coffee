describe "People", ->

  describe "Person", ->
    beforeEach ->
      @person = new Person "Jon Doe"

    it "should name himself", ->
      expect(@person.say_name()).toEqual "My name is Jon Doe!"