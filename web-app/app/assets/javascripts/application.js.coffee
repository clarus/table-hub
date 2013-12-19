#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require bootstrap
#= require_self
#= require web_app

# for more details see: http://emberjs.com/guides/application/
window.WebApp = Ember.Application.create()

WebApp.ApplicationAdapter = DS.FixtureAdapter.extend();
