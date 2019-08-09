Rails.application.routes.draw do
  # Routes for the Transaction resource:

  # CREATE
  get("/transactions/new", { :controller => "transactions", :action => "new_form" })
  post("/create_transaction", { :controller => "transactions", :action => "create_row" })

  # READ
  get("/transactions", { :controller => "transactions", :action => "index" })
  get("/transactions/:id_to_display", { :controller => "transactions", :action => "show" })

  # UPDATE
  get("/transactions/:prefill_with_id/edit", { :controller => "transactions", :action => "edit_form" })
  post("/update_transaction/:id_to_modify", { :controller => "transactions", :action => "update_row" })

  # DELETE
  get("/delete_transaction/:id_to_remove", { :controller => "transactions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Cellar resource:

  # CREATE
  get("/cellars/new", { :controller => "cellars", :action => "new_form" })
  post("/create_cellar", { :controller => "cellars", :action => "create_row" })

  # READ
  get("/cellars", { :controller => "cellars", :action => "index" })
  get("/cellars/:id_to_display", { :controller => "cellars", :action => "show" })

  # UPDATE
  get("/cellars/:prefill_with_id/edit", { :controller => "cellars", :action => "edit_form" })
  post("/update_cellar/:id_to_modify", { :controller => "cellars", :action => "update_row" })

  # DELETE
  get("/delete_cellar/:id_to_remove", { :controller => "cellars", :action => "destroy_row" })

  #------------------------------

  # Routes for the Producer resource:

  # CREATE
  get("/producers/new", { :controller => "producers", :action => "new_form" })
  post("/create_producer", { :controller => "producers", :action => "create_row" })

  # READ
  get("/producers", { :controller => "producers", :action => "index" })
  get("/producers/:id_to_display", { :controller => "producers", :action => "show" })

  # UPDATE
  get("/producers/:prefill_with_id/edit", { :controller => "producers", :action => "edit_form" })
  post("/update_producer/:id_to_modify", { :controller => "producers", :action => "update_row" })

  # DELETE
  get("/delete_producer/:id_to_remove", { :controller => "producers", :action => "destroy_row" })

  #------------------------------

  # Routes for the Region resource:

  # CREATE
  get("/regions/new", { :controller => "regions", :action => "new_form" })
  post("/create_region", { :controller => "regions", :action => "create_row" })

  # READ
  get("/regions", { :controller => "regions", :action => "index" })
  get("/regions/:id_to_display", { :controller => "regions", :action => "show" })

  # UPDATE
  get("/regions/:prefill_with_id/edit", { :controller => "regions", :action => "edit_form" })
  post("/update_region/:id_to_modify", { :controller => "regions", :action => "update_row" })

  # DELETE
  get("/delete_region/:id_to_remove", { :controller => "regions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Country resource:

  # CREATE
  get("/countries/new", { :controller => "countries", :action => "new_form" })
  post("/create_country", { :controller => "countries", :action => "create_row" })

  # READ
  get("/countries", { :controller => "countries", :action => "index" })
  get("/countries/:id_to_display", { :controller => "countries", :action => "show" })

  # UPDATE
  get("/countries/:prefill_with_id/edit", { :controller => "countries", :action => "edit_form" })
  post("/update_country/:id_to_modify", { :controller => "countries", :action => "update_row" })

  # DELETE
  get("/delete_country/:id_to_remove", { :controller => "countries", :action => "destroy_row" })

  #------------------------------

  # Routes for the Type resource:

  # CREATE
  get("/types/new", { :controller => "types", :action => "new_form" })
  post("/create_type", { :controller => "types", :action => "create_row" })

  # READ
  get("/types", { :controller => "types", :action => "index" })
  get("/types/:id_to_display", { :controller => "types", :action => "show" })

  # UPDATE
  get("/types/:prefill_with_id/edit", { :controller => "types", :action => "edit_form" })
  post("/update_type/:id_to_modify", { :controller => "types", :action => "update_row" })

  # DELETE
  get("/delete_type/:id_to_remove", { :controller => "types", :action => "destroy_row" })

  #------------------------------

  # Routes for the Bottle size resource:

  # CREATE
  get("/bottle_sizes/new", { :controller => "bottle_sizes", :action => "new_form" })
  post("/create_bottle_size", { :controller => "bottle_sizes", :action => "create_row" })

  # READ
  get("/bottle_sizes", { :controller => "bottle_sizes", :action => "index" })
  get("/bottle_sizes/:id_to_display", { :controller => "bottle_sizes", :action => "show" })

  # UPDATE
  get("/bottle_sizes/:prefill_with_id/edit", { :controller => "bottle_sizes", :action => "edit_form" })
  post("/update_bottle_size/:id_to_modify", { :controller => "bottle_sizes", :action => "update_row" })

  # DELETE
  get("/delete_bottle_size/:id_to_remove", { :controller => "bottle_sizes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Vintage resource:

  # CREATE
  get("/vintages/new", { :controller => "vintages", :action => "new_form" })
  post("/create_vintage", { :controller => "vintages", :action => "create_row" })

  # READ
  get("/vintages", { :controller => "vintages", :action => "index" })
  get("/vintages/:id_to_display", { :controller => "vintages", :action => "show" })

  # UPDATE
  get("/vintages/:prefill_with_id/edit", { :controller => "vintages", :action => "edit_form" })
  post("/update_vintage/:id_to_modify", { :controller => "vintages", :action => "update_row" })

  # DELETE
  get("/delete_vintage/:id_to_remove", { :controller => "vintages", :action => "destroy_row" })

  #------------------------------

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
