angular.module('tagit')
  .config [
    '$stateProvider', '$urlRouterProvider', 'tiRouterProvider', ($stateProvider, $urlRouterProvider, tiRouter) ->
      $urlRouterProvider.otherwise('/')
      $stateProvider
        .state('dashboard',
          url: '/'
          templateUrl: tiRouter.template('dashboard/index')
          controller: 'IndexDashboardController'
        )
  ]
