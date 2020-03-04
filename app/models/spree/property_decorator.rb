module Spree::PropertyDecorator
  def self.prepended(base)
    base.translates :name, :presentation, fallbacks_for_empty_translations: true, versioning: :paper_trail
  end

  Spree::Property.include SpreeGlobalize::Translatable
end

::Spree::Property.prepend(Spree::PropertyDecorator)
