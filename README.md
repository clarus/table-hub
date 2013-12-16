Table-Hub
=========
Pour plus d'informations, voir le [Wiki](https://github.com/clarus/table-hub/wiki). Technologies à utiliser :
* HTML/CSS : [Bootstrap](http://getbootstrap.com/)
* JavaScript client : [Ember.js](http://emberjs.com/)
* Ruby serveur : [Rails](http://rubyonrails.org/)

Static
------
Les sources de [table-hub.com](http://table-hub.com/). Du HTML + Bootstrap avec des templates Ruby pour générer du HTML statique. Doit être synchronisé manuellement avec le serveur pour mettre à jour la version en ligne.

WebApp
------
L'application Rails + Ember.js. Pas encore en ligne, à tester en local pour l'instant. Pour l'initialiser :

    bundle install
    rake db:migrate
    rake db:seeds

On démarre le serveur :

    rails server

L'application est accessible par [:3000](http://localhost:3000/).
