Rails.application.routes.draw do

  root 'home#index'

  resources :bids, :competitors, :targets, :applications, :frequencies,
  :crosses, :customs, :sheets, :categories, :products

end
