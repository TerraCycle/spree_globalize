module Spree::PromotionDecorator
  def self.prepended(base)
    base.translates :name, :description, fallbacks_for_empty_translations: true, versioning: :paper_trail
  end

  Spree::Promotion.include SpreeGlobalize::Translatable
end

::Spree::Promotion.prepend(Spree::PromotionDecorator)
