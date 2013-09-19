angular.module('tagit.directives')
  .directive 'tagLink', ['tiRouter', (tiRouter) ->
    restrict: "AE"
    templateUrl: tiRouter.template('directives/link')
    scope: true
  ]
