app = angular.module "realink"

app.controller 'NewsListController', [
  '$scope'
  'newsResource'
  ($scope, newsResource) ->
    $(".button-collapse").sideNav()
    $scope.news = newsResource
    $scope.viewNews = (newsObject) ->
      window.location.replace(newsObject.link)
]
