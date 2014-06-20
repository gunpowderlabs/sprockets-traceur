class window.Greeter
  constructor: (@greeting) ->

  greet: (name) ->
    "#{@greeting}, #{name}!"
