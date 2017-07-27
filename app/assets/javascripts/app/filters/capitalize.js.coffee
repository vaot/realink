app = angular.module 'realink'

app.filter 'capitalize', ->
  (input) ->
    if !!input
      input.charAt(0).toUpperCase() + input.substr(1).toLowerCase()
    else
      ''

