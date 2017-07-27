app = angular.module "realink"

app.controller 'NewsController', [
  '$scope'
  '$rootScope'
  ($scope, $rootScope) ->
    $scope.availableSites = $rootScope.server_meta.available_sites
    console.log $scope.availableSites
]
