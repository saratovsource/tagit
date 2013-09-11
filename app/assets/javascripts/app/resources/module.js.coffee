#= require_self
#= require ./links/module
#= require ./dashboard/module


angular.module('tagit.modules.resources', [
  'tagit.modules.resources.links'
  'tagit.modules.resources.dashboard'
  ]
)

angular.module('tagit.modules.resources.links', [])
angular.module('tagit.modules.resources.dashboard', [])
