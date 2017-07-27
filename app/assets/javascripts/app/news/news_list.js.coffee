app = angular.module "realink"

app.directive 'newsList', [
  ->
    link: (scope, element, attributes) ->
      console.log(scope)
    template: '<h2>He lllo {{news}}</h2>'
]
