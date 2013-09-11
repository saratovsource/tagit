#= require ./lib/module
#= require_tree ./config
#= require ./resources/module

angular.module('tagit.modules', [
  'tagit.modules.resources'
  ]
)
