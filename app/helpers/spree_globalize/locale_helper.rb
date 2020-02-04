module SpreeGlobalize
  module LocaleHelper
    def select_supported_locales
      select_tag(
        'supported_locales[]',
        options_for_select(::Spree::Store.current.available_locales.map(&:to_sym)),
        common_options
      )
    end

    def select_available_locales_fields
      select_tag(
        'locale',
        options_for_select(available_locales_options, ::Spree::Store.current.available_locales),
        common_options
      )
    end

    def supported_locales_options
      Config.supported_locales.map { |locale| locale_presentation(locale) }
    end
  end
end
