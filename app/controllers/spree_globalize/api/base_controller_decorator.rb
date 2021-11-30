module SpreeGlobalize::Api::BaseControllerDecorator
  ::Spree::Api::BaseController.include(::SpreeGlobalize::ControllerGlobalizeHelper)
end

::Spree::Api::BaseController.prepend(::SpreeGlobalize::Api::BaseControllerDecorator)
