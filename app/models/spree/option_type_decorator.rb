module Spree::OptionTypeDecorator
  def self.prepended(base)
    base.translates :name, :presentation, fallbacks_for_empty_translations: true, versioning: :paper_trail
  end
  
  Spree::OptionType.include SpreeGlobalize::Translatable
end

::Spree::OptionType.prepend(Spree::OptionTypeDecorator)
