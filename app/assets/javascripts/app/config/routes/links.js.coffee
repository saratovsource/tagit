angular.module('tagit')
  .config [
    '$stateProvider', '$urlRouterProvider', 'tiRouterProvider', ($stateProvider, $urlRouterProvider, tiRouter) ->
      $stateProvider
        .state('links',
          url: '/resources/links'
          templateUrl: tiRouter.template('resources/links/index')
          controller: 'ListLinksController'
        ).state('new_link',
          url: '/resources/links/new'
          templateUrl: tiRouter.template('resources/links/new')
          controller: 'NewLinkController'
        ).state('show_link',
          url: '/resources/links/{id}'
          templateUrl: tiRouter.template('resources/links/show')
          controller: 'ShowLinkController'
        ).state('edit_link',
          url: '/resources/links/{id}/edit'
          templateUrl: tiRouter.template('resources/links/edit')
          controller: 'EditLinkController'
        )
  ]
