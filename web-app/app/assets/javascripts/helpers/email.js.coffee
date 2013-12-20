Ember.Handlebars.helper "showEmailDotCom", (name, domain) ->
  new Handlebars.SafeString "<a href=\"mailto: #{name}@#{domain}.com\">#{name}@#{domain}.com</a>"