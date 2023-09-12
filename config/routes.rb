Spree::Core::Engine.add_routes do
  scope '(:locale)', locale: /#{Spree.available_locales.join('|')}/, defaults: { locale: nil } do
    namespace :admin do
      get '/:resource/:resource_id/translations' => 'translations#index', as: :translations
      patch '/option_values/:id' => 'option_values#update', as: :translate_option_value
      patch 'product/:id/product_properties/:id' => "product_properties#translate", as: :translate_product_property
    end
  end
end
