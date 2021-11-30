module SpreeGlobalize::BaseControllerDecorator
  ::Spree::BaseController.include(::SpreeGlobalize::ControllerGlobalizeHelper)
end

::Spree::BaseController.prepend(::SpreeGlobalize::BaseControllerDecorator)
