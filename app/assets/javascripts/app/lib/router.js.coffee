angular.module('tagit.libs')
  .provider 'tiRouter', ()->
    template: (name) ->
      "#{Routes.templates_path()}/#{name}"
    $get: () ->
      template: (name) ->
        "#{Routes.templates_path()}/#{name}"
