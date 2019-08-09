class BottleSizesController < ApplicationController
  def index
    @bottle_sizes = BottleSize.page(params[:page]).per(10)

    render("bottle_size_templates/index.html.erb")
  end

  def show
    @rating = Rating.new
    @cellar = Cellar.new
    @bottle_size = BottleSize.find(params.fetch("id_to_display"))

    render("bottle_size_templates/show.html.erb")
  end

  def new_form
    @bottle_size = BottleSize.new

    render("bottle_size_templates/new_form.html.erb")
  end

  def create_row
    @bottle_size = BottleSize.new

    @bottle_size.name = params.fetch("name")

    if @bottle_size.valid?
      @bottle_size.save

      redirect_back(:fallback_location => "/bottle_sizes", :notice => "Bottle size created successfully.")
    else
      render("bottle_size_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bottle_size = BottleSize.find(params.fetch("prefill_with_id"))

    render("bottle_size_templates/edit_form.html.erb")
  end

  def update_row
    @bottle_size = BottleSize.find(params.fetch("id_to_modify"))

    @bottle_size.name = params.fetch("name")

    if @bottle_size.valid?
      @bottle_size.save

      redirect_to("/bottle_sizes/#{@bottle_size.id}", :notice => "Bottle size updated successfully.")
    else
      render("bottle_size_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @bottle_size = BottleSize.find(params.fetch("id_to_remove"))

    @bottle_size.destroy

    redirect_to("/bottle_sizes", :notice => "Bottle size deleted successfully.")
  end
end
