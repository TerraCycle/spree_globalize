module SpreeGlobalize
  module LocaleHelper
    def select_available_locales_fields
      select_tag(
        'locale',
        options_for_select(available_locales_options, (params[:locale] || I18n.locale)),
        { include_blank: Spree.t(:all), class: 'select2' }
      )
    end
  end
end
