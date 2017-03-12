Rails.application.routes.draw do
  get "/" => "sweet_nothings#index"

  get "/sweet_nothings" => "sweet_nothings#index"
  get "/sweet_nothings/new" => "sweet_nothings#new"
  post "/sweet_nothings" => "sweet_nothings#create"
  get "sweet_nothings/:id" => "sweet_nothings#show"
  get "/sweet_nothings/:id/edit" => "sweet_nothings#edit"
  patch "/sweet_nothings/:id" => "sweet_nothings#update"
  delete "/sweet_nothings/:id" => "sweet_nothings#destroy"

end
