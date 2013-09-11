angular.module('tagit')
  .config [
    '$stateProvider', '$urlRouterProvider', 'tiRouterProvider', ($stateProvider, $urlRouterProvider, tiRouter) ->
      $stateProvider
        .state('links',
          url: '/resources/links'
          templateUrl: tiRouter.template('resources/links/index')
          controller: 'ListLinksController'
        )
  ]
