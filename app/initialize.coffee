MainRouter = require 'routers/main_router'
HomeView = require 'views/home_view'

class exports.Application
  constructor: ->
    $ =>
      @initialize()
      Backbone.history.start()

  # This callback would be executed on document ready event.
  # If you have a big application, perhaps it's a good idea to
  # group things by their type e.g. `@views = {}; @views.home = new HomeView`.
  initialize: ->
    @router = new MainRouter
    @homeView = new HomeView

window.app = new exports.Application
