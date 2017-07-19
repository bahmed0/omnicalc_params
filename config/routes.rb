Rails.application.routes.draw do
  
  get("/flexible/square/1", { :controller => "calculations", :action => "flex_square" })
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
