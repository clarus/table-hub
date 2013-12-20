# For more information see: http://emberjs.com/guides/routing/
WebApp.Router.map ->
  @resource "users", ->
    @resource "user", {path: "/:user_id"}, ->
      @route "edit"
    @route "create"
  @route "contact"