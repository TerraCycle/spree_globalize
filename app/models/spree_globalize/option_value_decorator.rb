module SpreeGlobalize::OptionValueDecorator
  def self.prepended(base)
    base.translates :name, :presentation, :fallbacks_for_empty_translations => true, versioning: :paper_trail
  end

  ::Spree::OptionValue.include ::SpreeGlobalize::Translatable
end

::Spree::OptionValue.prepend(::SpreeGlobalize::OptionValueDecorator)
