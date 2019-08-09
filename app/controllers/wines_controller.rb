class WinesController < ApplicationController
  def index
    @wines = Wine.all

    render("wine_templates/index.html.erb")
  end

  def show
    @wine = Wine.find(params.fetch("id_to_display"))

    render("wine_templates/show.html.erb")
  end

  def new_form
    @wine = Wine.new

    render("wine_templates/new_form.html.erb")
  end

  def create_row
    @wine = Wine.new

    @wine.name = params.fetch("name")
    @wine.bottle_size_id = params.fetch("bottle_size_id")
    @wine.type_id = params.fetch("type_id")
    @wine.coutry_id = params.fetch("coutry_id")
    @wine.region_id = params.fetch("region_id")
    @wine.producer_id = params.fetch("producer_id")
    @wine.picture = params.fetch("picture")

    if @wine.valid?
      @wine.save

      redirect_back(:fallback_location => "/wines", :notice => "Wine created successfully.")
    else
      render("wine_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @wine = Wine.find(params.fetch("prefill_with_id"))

    render("wine_templates/edit_form.html.erb")
  end

  def update_row
    @wine = Wine.find(params.fetch("id_to_modify"))

    @wine.name = params.fetch("name")
    @wine.bottle_size_id = params.fetch("bottle_size_id")
    @wine.type_id = params.fetch("type_id")
    @wine.coutry_id = params.fetch("coutry_id")
    @wine.region_id = params.fetch("region_id")
    @wine.producer_id = params.fetch("producer_id")
    @wine.picture = params.fetch("picture")

    if @wine.valid?
      @wine.save

      redirect_to("/wines/#{@wine.id}", :notice => "Wine updated successfully.")
    else
      render("wine_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @wine = Wine.find(params.fetch("id_to_remove"))

    @wine.destroy

    redirect_to("/wines", :notice => "Wine deleted successfully.")
  end
end