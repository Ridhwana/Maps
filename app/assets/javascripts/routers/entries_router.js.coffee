class MapsApp.Routers.Entries extends Backbone.Router

  routes:
    '': 'index'
    'entries/:id': 'show'

  index: ->
    console.log "home page "
    # render out the correct view with template
    view = new MapsApp.Views.EntriesIndex()
    console.log "created a new view", view
    # insert the view into the container
    $('#container').html(view.render())
    #was suppose to be $('#container').html(view.render().el)  WHY???

  show:(id) ->
    console.log "entry number #{id}"
