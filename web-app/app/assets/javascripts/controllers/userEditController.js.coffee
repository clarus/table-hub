WebApp.UserEditController = Ember.ObjectController.extend
  actions:
    save: ->
      user = @get "model"
      user.save()
      @transitionToRoute "user", user