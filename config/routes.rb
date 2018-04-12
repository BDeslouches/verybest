Rails.application.routes.draw do
  # Routes for the Best_food resource:
  # CREATE
  get "/best_foods/new", :controller => "best_foods", :action => "new"
  post "/create_best_food", :controller => "best_foods", :action => "create"

  # READ
  get "/best_foods", :controller => "best_foods", :action => "index"
  get "/best_foods/:id", :controller => "best_foods", :action => "show"

  # UPDATE
  get "/best_foods/:id/edit", :controller => "best_foods", :action => "edit"
  post "/update_best_food/:id", :controller => "best_foods", :action => "update"

  # DELETE
  get "/delete_best_food/:id", :controller => "best_foods", :action => "destroy"
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
