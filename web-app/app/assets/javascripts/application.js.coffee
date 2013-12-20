#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require bootstrap
#= require_tree ../../../vendor/assets/javascripts
#= require_self
#= require web_app

# set the language of the date library
moment.lang "fr"

# for more details see: http://emberjs.com/guides/application/
window.WebApp = Ember.Application.create()