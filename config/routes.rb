Spree::Core::Engine.routes.draw do
  namespace :admin do
    match 'invoice/:id(/:template)' => 'invoice#lasku'
  end
end
