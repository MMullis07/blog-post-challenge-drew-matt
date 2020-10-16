Rails.application.routes.draw do
  
  get "blog_posts" => "blog_post#index", as: "blog_posts"
  get "blog_posts/new" => "blog_post#new", as: "new_post"
  post "blog_posts" => "blog_post#create"
  get "blog_posts/:id" => "blog_post#show", as: "blog_post"
  get "blog_posts/:id/edit" => "blog_post#edit", as: "edit_post"
  patch "blog_posts/:id" => "blog_post#update"
  delete "blog_posts/:id" => "blog_post#destroy", as: "delete_post"

end
