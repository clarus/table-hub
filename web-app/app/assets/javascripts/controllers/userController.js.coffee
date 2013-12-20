WebApp.UserController = Ember.ObjectController.extend
  deleteMode: false
  actions:
    edit: -> @transitionToRoute "user.edit"
    delete: -> @set "deleteMode", (! @get "deleteMode")
    cancelDelete: -> @set "deleteMode", false
    confirmDelete: ->
      @get("model").deleteRecord()
      @get("model").save()
      @transitionToRoute "users"