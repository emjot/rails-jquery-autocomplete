require 'rails/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'

module RailsJQueryAutocomplete
  autoload :Orm              , 'rails-jquery-autocomplete/orm'
  autoload :FormtasticPlugin , 'rails-jquery-autocomplete/formtastic_plugin'
end

require 'rails-jquery-autocomplete/rails/engine'

require 'rails-jquery-autocomplete/autocomplete'
require 'rails-jquery-autocomplete/form_helper'
require 'rails-jquery-autocomplete/formtastic'
begin
  require 'simple_form'
  require 'rails-jquery-autocomplete/simple_form_plugin'
rescue LoadError
end
