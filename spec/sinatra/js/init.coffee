window.onload = ->
  greeter = new Greeter("Hello")
  greeting = greeter.greet("World")
  document.getElementById("hello").innerHTML = greeting
