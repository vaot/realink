app = angular.module 'realink'

app.factory 'AuthKeyInterceptor', [
  ->
    request: (config) ->
      headers =
        'X-Realink-Auth-key': "jdashiudhsahdhaudhasuk"

      angular.extend(config.headers, headers)
      config
]
