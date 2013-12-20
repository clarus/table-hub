WebApp.UserController = Ember.ObjectController.extend
  deleteMode: false
  actions:
    edit: -> @transitionToRoute "user.edit"
    delete: -> @toggleProperty "deleteMode"
    cancelDelete: -> @set "deleteMode", false
    confirmDelete: ->
      @get("model").deleteRecord()
      @transitionToRoute "users"