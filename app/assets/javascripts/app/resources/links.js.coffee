angular.module('tagit.resources')
  .factory 'Link', [
    'railsResourceFactory', (railsResourceFactory) ->
      railsResourceFactory
        url: Routes.api_v1_user_links_path()
        name: 'link'
  ]
