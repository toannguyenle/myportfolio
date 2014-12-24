Rails.application.routes.draw do
  root  'application#index'
  # get '*path' => 'application#index'

  scope 'api', defaults: {format: :json} do
    resources :apps, only: [ :show, :index, :create, :update, :destroy]
  end
  post 'like' => 'apps#like'
end
