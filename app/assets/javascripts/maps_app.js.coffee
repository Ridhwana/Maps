window.MapsApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  initialize: ->
    console.log "initialise backbone app"
    new MapsApp.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  MapsApp.initialize()
