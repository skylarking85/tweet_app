Rails.application.routes.draw do
  get "posts" => "posts#index", as: "posts_index"
  get "posts/new" => "posts#new", as: "post_new"
  get "posts/:id" => "posts#show", as: "post_show"
  get "posts/:id/edit" => "posts#edit", as: "post_edit"
  post "posts/:id/update" => "posts#update", as: "post_update"
  post "posts/create" => "posts#create", as: "post_create"
  post "posts/:id/delete" => "posts#delete", as: "post_delete"

  get "/" => "home#top", as: "home"
  get "about" => "home#about", as: "about"
end
