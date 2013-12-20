WebApp.User = DS.Model.extend
  name: DS.attr()
  email: DS.attr()
  summary: DS.attr()
  creationDate: DS.attr()

WebApp.User.FIXTURES = [
  {id: 1, name: "Mimi", email: "mimi@gmail.com", summary: "Le Shannon est un cours d'eau.", creationDate: "Mon, 26 Aug 2013 20:23:43 GMT"}
  {id: 2, name: "Chien", email: "chien@gmail.com", summary: "Le chien est la sous-espèce domestique de Canis lupus.", creationDate: "Fri, 07 Aug 2013 10:10:10 GMT"} ]