WebApp.UsersCreateController = Ember.ObjectController.extend
  actions:
    save: ->
      # just before saving, we set the creationDate
      @get("model").set "creationDate", (new Date())

      # create a record and save it to the store
      newUser = @store.createRecord "user", @get "model"
      newUser.save()

      # redirects to the user itself
      this.transitionToRoute "user", newUser