module SpreeGlobalize
  module LocaleHelper
    def select_available_locales_fields
      select_tag(
        'locale',
        options_for_select(supported_locales_options),
        { include_blank: Spree.t(:all), class: 'select2' }
      )
    end
  end
end
