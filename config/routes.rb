Rails.application.routes.draw do

  root 'home#index'

  resources :products, :bids, :competitors, :targets, :applications, :frequencies,
  :crosses, :customs, :sheets, :categories

end
