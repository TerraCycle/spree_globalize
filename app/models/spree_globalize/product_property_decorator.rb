module SpreeGlobalize::ProductPropertyDecorator
  def self.prepended(base)
    base.translates :value, fallbacks_for_empty_translations: true, versioning: :paper_trail
  end

  ::Spree::ProductProperty.include ::SpreeGlobalize::Translatable
end

::Spree::ProductProperty.prepend(SpreeGlobalize::ProductPropertyDecorator)
