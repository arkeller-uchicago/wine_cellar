Rails.application.routes.draw do
  # Routes for the Wine resource:

  # CREATE
  get("/wines/new", { :controller => "wines", :action => "new_form" })
  post("/create_wine", { :controller => "wines", :action => "create_row" })

  # READ
  get("/wines", { :controller => "wines", :action => "index" })
  get("/wines/:id_to_display", { :controller => "wines", :action => "show" })

  # UPDATE
  get("/wines/:prefill_with_id/edit", { :controller => "wines", :action => "edit_form" })
  post("/update_wine/:id_to_modify", { :controller => "wines", :action => "update_row" })

  # DELETE
  get("/delete_wine/:id_to_remove", { :controller => "wines", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
