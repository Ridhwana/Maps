class MapsApp.Routers.Entries extends Backbone.Router

  routes:
    '': 'index'
    'entries/:id': 'show'

  index: ->
    console.log "home page "

  show:(id) ->
    console.log "entry number #{id}"
