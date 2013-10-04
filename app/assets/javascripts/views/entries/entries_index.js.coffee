class MapsApp.Views.EntriesIndex extends Backbone.View

  template: -> 
    HandlebarsTemplates['entries/index']

  render: ->
    console.log "rendering the view"
    # $(@el).html(@template())
    # console.log @
    # @

    html = @template()
    this.$el.html(html)