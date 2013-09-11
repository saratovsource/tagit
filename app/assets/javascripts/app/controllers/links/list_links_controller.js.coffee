angular.module('tagit.controllers')
  .controller 'ListLinksController', [
    '$scope', 'Link', ($scope, Link) ->
      $scope.title = "My links..."
      $scope.items = Link.query()
  ]
