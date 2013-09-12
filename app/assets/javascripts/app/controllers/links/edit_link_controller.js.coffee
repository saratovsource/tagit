angular.module('tagit.controllers')
  .controller 'EditLinkController', [
    '$scope', '$stateParams', '$state', 'Link', ($scope, $stateParams, $state, Link) ->
      $scope.title = "Show link..."
      Link.get($stateParams.id).then (item)->
        $scope.link = item

      $scope.save = ->
        $scope.link.update().then(
          -> $state.go 'links'
        , (response)-> console.debug response
        )
  ]
