module RailsJQueryAutocomplete
  module Rails
    class Engine < ::Rails::Engine
      initializer 'rails_jquery_autocomplete' do
        ActiveSupport.on_load(:action_controller) do
          include RailsJQueryAutocomplete::Autocomplete
        end

        ActiveSupport.on_load(:action_view) do
          ActionView::Helpers.include RailsJQueryAutocomplete::Helpers
          ActionView::Helpers::FormHelper.include RailsJQueryAutocomplete::FormHelper
          ActionView::Helpers::FormTagHelper.include RailsJQueryAutocomplete::FormTagHelper
          ActionView::Helpers::FormBuilder.include RailsJQueryAutocomplete::FormBuilder
        end
      end
    end
  end
end
