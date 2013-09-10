angular.module('tagit.modules.resources.links.controllers')
  .controller 'ListLinksController', [
    '$scope', ($scope) ->
      $scope.title = "My links..."
      $scope.links = [1,2,3,4,5,6,7,8,9,0]
  ]
