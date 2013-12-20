WebApp.UsersCreateRoute = Ember.Route.extend
  model: -> Ember.Object.create {}
  renderTemplate: -> @render "user.edit", {controller: "usersCreate"}