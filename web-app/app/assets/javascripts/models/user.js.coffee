WebApp.User = DS.Model.extend
  name: DS.attr()
  email: DS.attr()
  summary: DS.attr()

WebApp.User.FIXTURES = [
  {id: 1, name: "Mimi", email: "mimi@gmail.com", summary: "Le Shannon est un cours d'eau."}
  {id: 2, name: "Chien", email: "chien@gmail.com", summary: "Le chien est la sous-espèce domestique de Canis lupus."} ]