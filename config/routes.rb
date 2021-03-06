Rails.application.routes.draw do
  resources :profiles, except: [:new, :edit]
  resources :comments, except: [:new, :edit]
  resources :playlists, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  get '/tracks' => 'playlists#get_tracks'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
