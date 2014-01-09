Table-Hub
=========
Pour plus d'informations, voir le [Wiki](https://github.com/clarus/table-hub/wiki). Technologies utilisées pour l'instant :
* HTML/CSS : [Bootstrap](http://getbootstrap.com/)
* Ruby serveur : [Rails](http://rubyonrails.org/)
À l'avenir on pourra utiliser [Ember.js](http://emberjs.com/) pour le client.

Table-Hub-Heroku (en ligne)
---------------------------
L'application Rails déployée sur Heroku : [table-hub-heroku](https://github.com/clarus/table-hub-heroku/).

Possesions
----------
### Comptes en ligne
* GitHub : 7 $ / mois (deux dépots privés)
* Heroku : 20 $ / mois pour SSL (à vérifier)

### Noms de domaine
* `table-hub.com`
* `table-hub.fr`
* `tablehub.fr`
À terme il faudrait aussi acheter `tablehub.com` (expire le 20 mars).

### SSL
* `www.table-hub.com`
Les certificats sont dans le dossier `ssl`.

Static (abandonné)
------------------
Du HTML + Bootstrap avec des templates Ruby pour générer du HTML statique. Doit être synchronisé manuellement avec le serveur pour mettre à jour la version en ligne.

WebApp (abandonné)
------------------
Une application Rails + Ember.js. Pour l'initialiser, installer Ruby et [Bundler](http://bundler.io/) :

    gem install bundler

puis faire à la racine de `web-app` :

    bundle install # installe toutes les dépendances (Rails, Ember, Bootstrap, ...)
    rake db:migrate # crée la base de données (en SQLite)
    rake db:seed # remplit la base de données de données initiales

On démarre le serveur :

    rails server

L'application est accessible par [localhost:3000](http://localhost:3000/). Pour l'instant :
* page d'accueil [localhost:3000/](http://localhost:3000/) avec gestion de la liste des utilisateurs
* liste [JSON](http://www.json.org/) des comptes [localhost:3000/api/users](http://localhost:3000/api/users)
