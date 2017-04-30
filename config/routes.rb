Rails.application.routes.draw do

  get 'home/index'
  get 'home/create'
  get 'home/destroy/:id' => 'home#destroy'
  get 'home/read/:id' => 'home#read'
  get 'home/update/:id' => 'home#update'
  get 'home/real_update/:id' => 'home#real_update'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
