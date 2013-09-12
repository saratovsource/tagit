angular.module('tagit.controllers')
  .controller 'NewLinkController', [
    '$scope', '$stateParams', '$state', 'Link', ($scope, $stateParams, $state, Link) ->
      $scope.link = new Link
      $scope.save = ->
        $scope.link.create().then(
          -> $state.go 'links'
        , (response)-> console.debug response
        )
  ]
