WebApp.UsersController = Ember.ArrayController.extend
  sortProperties: ["name"]
  sortAscending: true
  usersCount: (-> @get "model.length").property "@each"