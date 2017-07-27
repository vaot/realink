app = angular.module 'realink'

app.service 'NewsResource', [
  '$resource'
  ($resource) ->
    url = '/api/v1/news.json'

    params =
      type: '@type'

    $resource(url, params)
]
