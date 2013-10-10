class MapsApp.Views.EntriesIndex extends Backbone.View
  # el:".app-container"
  template: -> 
    HandlebarsTemplates['entries/index']

  events:
    "click .js-map-link" : "GoogleEarth"

  GoogleEarth: ->
    console.log "pressed the button"

    $.getScript "http://www.google.com/jsapi", =>
      google.load 'earth', '1',
        other_params: 'sensor=false'
        callback: ()=>
          console.log "in callback"

          mapOptions =
            zoom: 14

          bootbox.alert "<div id='map3d' style='width: 100%; height: 409px;'></div>"

          console.log "init"

          initCB = (instance) ->
            console.log "init CB"
            ge = instance
            ge.getWindow().setVisibility true
          # add a navigation control
            ge.getNavigationControl().setVisibility ge.VISIBILITY_AUTO
            
            # add some layers
            ge.getLayerRoot().enableLayerById ge.LAYER_BORDERS, true
            ge.getLayerRoot().enableLayerById ge.LAYER_ROADS, true

          failureCB = (errorCode) ->
            console.log "error"

          google.earth.createInstance("map3d", initCB, failureCB)

          # console.log "init cb after", initCB


  render: ->
    console.log "rendering the view"
    # $(@el).html(@template())
    # console.log @
    # @

    html = @template()
    this.$el.html(html)