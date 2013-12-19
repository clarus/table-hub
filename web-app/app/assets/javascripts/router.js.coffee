# For more information see: http://emberjs.com/guides/routing/

WebApp.Router.map ->
  @resource("users", { path: "/" })

WebApp.UsersRoute = Ember.Route.extend
  model: -> @store.find "users"
