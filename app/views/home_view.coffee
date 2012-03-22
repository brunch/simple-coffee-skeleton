module.exports = class HomeView extends Backbone.View
  id: 'home-view'
  template: require './templates/home'

  render: ->
    @$el.html @template()
    this
