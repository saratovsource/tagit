angular.module('tagit.libs')
  .provider 'tiRouter', ()->
    template: (name) ->
      Routes.templates_path(id: name)
    $get: () ->
