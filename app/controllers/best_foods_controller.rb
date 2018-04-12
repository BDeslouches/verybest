class BestFoodsController < ApplicationController
  def index
    @best_foods = BestFood.all

    render("best_foods/index.html.erb")
  end

  def show
    @best_food = BestFood.find(params[:id])

    render("best_foods/show.html.erb")
  end

  def new
    @best_food = BestFood.new

    render("best_foods/new.html.erb")
  end

  def create
    @best_food = BestFood.new

    @best_food.dish_id = params[:dish_id]
    @best_food.venue_id = params[:venue_id]
    @best_food.isbest = params[:isbest]

    save_status = @best_food.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/best_foods/new", "/create_best_food"
        redirect_to("/best_foods")
      else
        redirect_back(:fallback_location => "/", :notice => "Best food created successfully.")
      end
    else
      render("best_foods/new.html.erb")
    end
  end

  def edit
    @best_food = BestFood.find(params[:id])

    render("best_foods/edit.html.erb")
  end

  def update
    @best_food = BestFood.find(params[:id])

    @best_food.dish_id = params[:dish_id]
    @best_food.venue_id = params[:venue_id]
    @best_food.isbest = params[:isbest]

    save_status = @best_food.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/best_foods/#{@best_food.id}/edit", "/update_best_food"
        redirect_to("/best_foods/#{@best_food.id}", :notice => "Best food updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Best food updated successfully.")
      end
    else
      render("best_foods/edit.html.erb")
    end
  end

  def destroy
    @best_food = BestFood.find(params[:id])

    @best_food.destroy

    if URI(request.referer).path == "/best_foods/#{@best_food.id}"
      redirect_to("/", :notice => "Best food deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Best food deleted.")
    end
  end
end
