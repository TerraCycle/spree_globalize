module Spree::StoreDecorator
  def self.prepended(base)
    base.translates :name, :meta_description, :meta_keywords, :seo_title, fallbacks_for_empty_translations: true, versioning: :paper_trail
  end

  Spree::Store.include SpreeGlobalize::Translatable
end

::Spree::Store.prepend(Spree::StoreDecorator)
