Ember.Handlebars.helper "formatDate", (date) ->
  moment(date).fromNow()