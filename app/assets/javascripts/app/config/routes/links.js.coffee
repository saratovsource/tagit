angular.module('tagit')
  .config [
    '$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
      $stateProvider
        .state('links',
          url: 'resources/links'
          templateUrl: 'resources/links.ng'
          controller: 'LinksController'
        )
  ]
