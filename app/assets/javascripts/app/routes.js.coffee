app = angular.module 'realink'

app.run [
  '$templateCache'
  ($templateCache) ->
    angular.forEach JST,
      (template, template_name) ->
        @put "/#{template_name}.html", template({})
      , $templateCache
]

app.config [
  '$httpProvider'
  '$locationProvider'
  ($httpProvider, $locationProvider) ->
    $locationProvider.html5Mode(true)
    $locationProvider.hashPrefix('!')

    $httpProvider.interceptors.push 'AuthKeyInterceptor'
]

app.run [
  '$rootScope'
  ($rootScope)->
    $rootScope.$on '$stateChangeStart', ->
      $(".button-collapse").sideNav('destroy')
]

app.config [
  '$stateProvider'
  ($stateProvider) ->

    $stateProvider
      .state 'news',
        abstract: true
        controller: 'NewsController'
        templateUrl: '/app/news/news.html'

      .state 'news.list',
        url: '/news/:sub_type/:type'
        params:
          type:
            value: null
            squash: true
        views:
          '':
            controller: 'NewsListController'
            templateUrl: '/app/news/list.html'
            resolve:
              newsResource: [
                'NewsResource'
                '$stateParams'
                (NewsResource, $stateParams) ->
                  NewsResource.query(
                    type: $stateParams.type,
                    sub_type: $stateParams.sub_type
                  ).$promise
              ]

]
