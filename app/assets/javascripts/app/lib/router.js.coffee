angular.module('tagit.libs')
  .provider 'tiRouter', ()->
    template: (name) ->
      # "#{Routes.templates_path()}/#{name}"
      "/templates/#{name}"
    $get: () ->
      template: (name) ->
        # "#{Routes.templates_path()}/#{name}"
        "/templates/#{name}"
