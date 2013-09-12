angular.module('tagit.controllers')
  .controller 'ShowLinkController', [
    '$scope', '$stateParams', 'Link', ($scope, $stateParams, Link) ->
      $scope.title = "Show link..."
      Link.get($stateParams.id).then (item)->
        $scope.item = item
  ]
