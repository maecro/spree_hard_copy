Spree::Core::Engine.routes.draw do
  match 'invoice/:id(/:template)' => 'invoice#lasku'
end
