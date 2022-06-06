Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  #resources :bookmarks, only: :destroy
  delete "bookmarks/:id/delete", to: "bookmarks#destroy", as: :bookmark
  get 'bookmarks/:id/delete' => 'bookmarks#destroy'
end
